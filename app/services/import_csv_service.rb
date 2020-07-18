# frozen_string_literal: true

class ImportCsvService
  require 'csv'

  VALID_CSV_TEMPLATE = %i[name email role password password_confirmation].freeze

  attr_accessor :csv_data

  def initialize(csv_data: nil)
    @csv_data = csv_data
  end

  def import
    raise InvalidSpreadsheet unless valid_csv?

    create_users
  end

  private

  def create_users
    percentage = 100 / csv.size
    csv.each_with_index do |row, index|
      user = User.find_or_initialize_by(row.to_h)
      ProgressBarJob.perform_later(index * percentage) if user.save
    end
  end

  def valid_csv?
    csv.headers == VALID_CSV_TEMPLATE
  rescue ArgumentError
    false
  end

  def csv
    @csv ||= CSV.read(csv_data.path, headers: true, header_converters: :symbol, encoding: 'utf-8')
  end

  class InvalidSpreadsheet < StandardError; end
end

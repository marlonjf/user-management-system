# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ImportCsvService do
  describe '#import' do
    let!(:file) { File.open('spec/fixtures/files/users.csv') }
    let!(:service) { described_class.new(csv_data: file) }

    context 'with valid csv' do
      it 'creates users' do
        expect { service.import }.to(change { User.count }.from(0).to(3))
      end

      it 'call job' do
        expect(ProgressBarJob).to(receive(:perform_later).exactly(3).times)
        service.import
      end
    end

    context 'with invalid csv' do
      let!(:file) { File.open('spec/fixtures/files/invalid_users.csv') }
      let!(:service) { described_class.new(csv_data: file) }

      it 'call job' do
        expect { service.import }.to(raise_error(ImportCsvService::InvalidSpreadsheet))
      end
    end

    context 'raising error' do
      let!(:service) { described_class.new(csv_data: file) }

      before do
        allow(service).to(receive(:csv).and_raise(ArgumentError, 'error'))
      end

      it 'call job' do
        expect { service.import }.to(raise_error(ImportCsvService::InvalidSpreadsheet))
      end
    end
  end
end

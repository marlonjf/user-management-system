# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'John' }
    role { 0 }
    sequence(:email) { |n| "email#{Time.zone.now.strftime('%Y%m%d%H%M%S')}-#{n}@gmail.com" }
    before(:create) do |user|
      user.password = 'testeteste'
      user.password_confirmation = 'testeteste'
    end
  end
end

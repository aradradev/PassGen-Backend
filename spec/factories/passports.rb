# spec/factories/passports.rb
FactoryBot.define do
  factory :passport do
    passport_number { 'AB123456' }
    issue_date { Date.today - 1.year }
    expiration_date { Date.today + 9.months }
    country { 'SomeCountry' }
    user { association :user }
  end
end

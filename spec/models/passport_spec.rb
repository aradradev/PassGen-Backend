# spec/models/passport_spec.rb
require 'rails_helper'

RSpec.describe Passport, type: :model do
  it 'is valid with valid attributes' do
    passport = FactoryBot.create(:passport)
    expect(passport).to be_valid
  end

  it 'is not valid without a passport number' do
    passport = FactoryBot.build(:passport, passport_number: nil)
    expect(passport).to_not be_valid
  end

  it 'is not valid without an issue date' do
    passport = FactoryBot.build(:passport, issue_date: nil)
    expect(passport).to_not be_valid
  end

  it 'is not valid without an expiration date' do
    passport = FactoryBot.build(:passport, expiration_date: nil)
    expect(passport).to_not be_valid
  end

  it 'is not valid without a country' do
    passport = FactoryBot.build(:passport, country: nil)
    expect(passport).to_not be_valid
  end

  it 'is not valid without an associated user' do
    passport = FactoryBot.build(:passport, user: nil)
    expect(passport).to_not be_valid
  end
end

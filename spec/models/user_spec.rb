# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end

  it 'is not valid without a first name' do
    user = FactoryBot.build(:user, first_name: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without a last name' do
    user = FactoryBot.build(:user, last_name: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without a birthdate' do
    user = FactoryBot.build(:user, birthdate: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without a phone number' do
    user = FactoryBot.build(:user, phone_number: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without an address' do
    user = FactoryBot.build(:user, address: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without an emergency contact name' do
    user = FactoryBot.build(:user, emergency_contact_name: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without an emergency contact phone' do
    user = FactoryBot.build(:user, emergency_contact_phone: nil)
    expect(user).to_not be_valid
  end
end

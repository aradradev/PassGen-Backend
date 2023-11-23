# spec/models/embassy_spec.rb
require 'rails_helper'

RSpec.describe Embassy, type: :model do
  it 'is valid with valid attributes' do
    embassy = FactoryBot.create(:embassy)
    expect(embassy).to be_valid
  end

  it 'is not valid without a country' do
    embassy = FactoryBot.build(:embassy, country: nil)
    expect(embassy).not_to be_valid
  end

  it 'is not valid without a name' do
    embassy = FactoryBot.build(:embassy, name: nil)
    expect(embassy).not_to be_valid
  end

  it 'is not valid without a location' do
    embassy = FactoryBot.build(:embassy, location: nil)
    expect(embassy).not_to be_valid
  end

  it 'is not valid without an appointment date' do
    embassy = FactoryBot.build(:embassy, appointment_date: nil)
    expect(embassy).not_to be_valid
  end
end

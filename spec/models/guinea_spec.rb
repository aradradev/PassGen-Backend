# spec/models/guinea_spec.rb
require 'rails_helper'

RSpec.describe Guinea, type: :model do
  it 'is valid with valid attributes' do
    guinea = FactoryBot.create(:guinea)
    expect(guinea).to be_valid
  end

  it 'is not valid without an identification document' do
    guinea = FactoryBot.build(:guinea, identification_document: nil)
    expect(guinea).not_to be_valid
  end

  it 'is not valid without a travel itinerary' do
    guinea = FactoryBot.build(:guinea, travel_itinerary: nil)
    expect(guinea).not_to be_valid
  end
end

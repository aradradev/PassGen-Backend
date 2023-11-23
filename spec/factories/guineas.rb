FactoryBot.define do
  factory :guinea do
    identification_document { 'ABC123' }
    travel_itinerary { 'Some itinerary details' }
    user
  end
end

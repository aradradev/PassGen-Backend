class Guinea < ApplicationRecord
  belongs_to :user

  validates :identification_document, :travel_itinerary, presence: true
end

class Embassy < ApplicationRecord
  validates :country, :name, :location, :appointment_date, presence: true
end

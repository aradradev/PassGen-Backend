class User < ApplicationRecord
  has_many :passports, dependent: :destroy
  has_many :guineas, dependent: :destroy
  has_many :embassies
  has_many :embassy_appointments

  validates :first_name, :last_name, :birthdate, :phone_number, :address,
            :emergency_contact_name, :emergency_contact_phone, presence: true
end

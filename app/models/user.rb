class User < ApplicationRecord
  has_many :passports, dependent: :destroy
  has_one :guinea, dependent: :destroy

  validates :first_name, :last_name, :birthdate, :phone_number, :address,
            :emergency_contact_name, :emergency_contact_phone, presence: true
end

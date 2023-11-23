class User < ApplicationRecord
  has_one :passport
  has_one :guinea

  validates :first_name, :last_name, :birthdate, :phone_number, :address,
            :emergency_contact_name, :emergency_contact_phone, presence: true
end

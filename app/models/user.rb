class User < ApplicationRecord
  has_one :passport
  has_one :guinea

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :emergency_contact_name, presence: true
  validates :emergency_contact_phone, presence: true
end

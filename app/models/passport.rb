class Passport < ApplicationRecord
  belongs_to :user

  validates :passport_number, :issue_date, :expiration_date, :country, presence: true
  validates :passport_number, uniqueness: true
end

class Passport < ApplicationRecord
  belongs_to :user

  validates :passport_number, presence: true
  validates :issue_date, presence: true
  validates :expiration_date, presence: true
  validates :country, presence: true
  validates :user, presence: true
end

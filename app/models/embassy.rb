class Embassy < ApplicationRecord
  has_many :embassy_appointments
  has_many :users, through: :embassy_appointments

  validates :country, :name, :location, presence: true
  validates :continent, presence: true
  validate :appointment_date_should_be_in_the_future

  def appointment_date_should_be_in_the_future
    errors.add(:appointment_date, 'should be in the future') if appointment_date.present? && appointment_date <= Time.current
  end
end

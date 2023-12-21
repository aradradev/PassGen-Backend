class EmbassyAppointment < ApplicationRecord
  belongs_to :user
  belongs_to :embassy

  validates :appointment_date, presence: true
  validate :appointment_date_should_be_in_the_future

  def appointment_date_should_be_in_the_future
    errors.add(:appointment_date, 'should be in the future') if appointment_date.present? && appointment_date <= Time.current
  end
end

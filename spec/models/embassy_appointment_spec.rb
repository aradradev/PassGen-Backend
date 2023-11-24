require 'rails_helper'
RSpec.describe EmbassyAppointment, type: :model do
  it 'is valid with valid attributes' do
    appointment = FactoryBot.create(:embassy_appointment)
    expect(appointment).to be_valid
  end

  it 'is not valid without an appointment date' do
    appointment = FactoryBot.build(:embassy_appointment, appointment_date: nil)
    expect(appointment).not_to be_valid
  end
end

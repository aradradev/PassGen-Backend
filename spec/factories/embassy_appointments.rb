FactoryBot.define do
  factory :embassy_appointment do
    association :user
    association :embassy
    appointment_date { DateTime.now + 1.week }
  end
end

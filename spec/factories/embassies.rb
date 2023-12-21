FactoryBot.define do
  factory :embassy do
    country { 'Some Country' }
    name { 'Embassy Name' }
    location { 'Embassy Location' }
    appointment_date { DateTime.now + 1.week }
    continent { 'Europe' }

    trait :invalid_appointment_date do
      appointment_date { DateTime.now - 1.week }
    end
  end
end

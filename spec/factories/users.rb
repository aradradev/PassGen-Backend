# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    first_name { 'John' }
    last_name { 'Doe' }
    birthdate { Date.today - 20.years }
    phone_number { '123456789' }
    address { '123 Main St' }
    emergency_contact_name { 'Emergency Contact' }
    emergency_contact_phone { '987654321' }
  end
end

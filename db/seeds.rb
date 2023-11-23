# db/seeds.rb

# Seed Users
user = User.create!(
  first_name: "John",
  last_name: "Doe",
  birthdate: Date.parse("1990-01-01"),
  phone_number: "123456789",
  address: "123 Main St",
  emergency_contact_name: "Emergency Contact",
  emergency_contact_phone: "987654321"
)

# Seed Passports
Passport.create!(
  user: user,
  passport_number: "AC123456",
  issue_date: Date.parse("2022-11-23"),
  expiration_date: Date.parse("2024-08-23"),
  country: "Guinea"
)

# Seed Guineas
Guinea.create!(
  user: user,
  identification_document: "ID123456",
  travel_itinerary: "Sample Travel Itinerary"
)

# Seed Embassies
Embassy.create!(
  country: "Embassy Country",
  name: "Embassy Name",
  location: "Embassy Location",
  appointment_date: DateTime.parse("2023-01-01 10:00:00")
)

puts "Seed data created successfully!"

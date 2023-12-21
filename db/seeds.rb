# db/seeds.rb

# Seed Users
user = User.create!(
  first_name: "Vic",
  last_name: "Doe",
  birthdate: Date.parse("1990-01-01"),
  phone_number: "123456789",
  address: "224 Matam St",
  emergency_contact_name: "Jack Doe",
  emergency_contact_phone: "623223331"
)

# Seed Passports
Passport.create!(
  user: user,
  passport_number: "BC123456",
  issue_date: Date.parse("2022-11-23"),
  expiration_date: Date.parse("2024-08-23"),
  country: "Guinea"
)

# Seed Guineas
Guinea.create!(
  user: user,
  identification_document: "FG123421",
  travel_itinerary: "From Guinea to Senegal"
)

# Seed Embassies
embassy = Embassy.create!(
  country: "Senegal",
  name: "US Embassy",
  location: "Embassy Location",
  appointment_date: DateTime.now + 1.week,
  continent: "Africa"
)

# Seed Embassy Appointement
EmbassyAppointment.create!(
  user_id: user.id,
  embassy_id: embassy.id,
  appointment_date: embassy.appointment_date
)


puts "Seed data created successfully!"

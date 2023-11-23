# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_23_151124) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "embassies", force: :cascade do |t|
    t.string "country"
    t.string "name"
    t.string "location"
    t.datetime "appointment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guineas", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "identification_document"
    t.string "travel_itinerary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_guineas_on_user_id"
  end

  create_table "passports", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "passport_number"
    t.date "issue_date"
    t.date "expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.index ["user_id"], name: "index_passports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthdate"
    t.string "phone_number"
    t.string "address"
    t.string "emergency_contact_name"
    t.string "emergency_contact_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "guineas", "users"
  add_foreign_key "passports", "users"
  add_foreign_key "passports", "users", name: "fk_passports_users", on_delete: :cascade
end

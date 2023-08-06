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

ActiveRecord::Schema[7.0].define(version: 2023_08_06_194316) do
  create_table "activities", force: :cascade do |t|
    t.boolean "hiking"
    t.boolean "sight_seeing"
    t.boolean "beach"
    t.boolean "boat_safari"
    t.boolean "water_sports"
    t.boolean "park_tour"
    t.boolean "cultural_tour"
    t.boolean "city_tour"
    t.boolean "kid_activities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "package_id"
    t.integer "days_booked"
    t.integer "number_of_people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.integer "activity_id"
    t.string "package_name"
    t.string "recommended_hotel"
    t.string "location"
    t.string "image"
    t.integer "price_per_day"
    t.string "description"
    t.integer "maximum_no_of_people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "package_id"
    t.integer "booking_id"
    t.integer "card_number"
    t.datetime "expiration_date"
    t.integer "cvc"
    t.integer "date_paid"
    t.integer "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "dob"
    t.string "email"
    t.string "password"
    t.string "confirm_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

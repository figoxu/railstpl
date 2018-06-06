# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180606224556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "city"
    t.string "programLanguage"
    t.string "team"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.string "avatar"
  end

  for i in 1..100
    user = User.new
    user.name = Faker::Name.name
    user.password = "123456"
    user.email = Faker::Internet.email
    user.city = Faker::Address.city
    user.programLanguage = Faker::ProgrammingLanguage.name
    user.team = Faker::Team.name
    user.phone = Faker::PhoneNumber.phone_number
    user.avatar = Faker::Avatar.image
    user.gender = Faker::Boolean.boolean ? "Male" : "Female"
    user.save
  end
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_02_200712) do

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.datetime "time"
    t.string "diagnosis", default: "N/A"
    t.string "directions", default: "N/A"
    t.integer "doctor_id"
    t.integer "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "specialty"
    t.string "degree"
    t.string "bio"
    t.string "residency"
    t.string "email"
    t.string "image", default: "https://252radio.com/wp-content/uploads/2016/11/default-user-image.png"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "condition"
    t.string "name"
    t.integer "height"
    t.integer "weight"
    t.integer "age"
    t.string "image"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "appointments", force: :cascade do |t|
#   t.date "date"
#   t.datetime "time"
#   t.string "diagnosis", default: "N/A"
#   t.string "directions", default: "N/A"
#   t.integer "doctor_id"
#   t.integer "patient_id"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "Cardiology", degree: "MD U Chicago", bio: Faker::Lorem.paragraph, residency: "Illinois Masonic", email: "doc@doc.com" )
patient = Patient.create(health_conditions: "High Blood Pressure", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, height: 67, weight: 200, age: 34, email: "patient@me.org")
appointment = Appointment.create(date: Faker::Date.forward(days: 23), time: Faker::Time.forward(days: 23, period: :morning), diagnosis: "Diabetes", directions: "Take Meds", doctor_id: doctor.id, patient_id: patient.id)
patient_two = Patient.create(health_conditions: "Arthritis", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, height: 60, weight: 150, age: 82, email: "me@me.com")
appointment_two = Appointment.create(date: Faker::Date.forward(days: 23), time: Faker::Time.forward(days: 23, period: :morning), diagnosis: "Ankle Sprain", directions: "Ice and Ibuprofen", doctor: doctor, patient: patient_two)

# create_table "doctors", force: :cascade do |t|
#   t.string "first_name"
#   t.string "specialty"
#   t.string "degree"
#   t.string "bio"
#   t.string "residency"
#   t.string "email"
#   t.string "image", default: "https://252radio.com/wp-content/uploads/2016/11/default-user-image.png"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.string "last_name"
# end


#
# create_table "patients", force: :cascade do |t|
#   t.string "health_conditions"
#   t.string "first_name"
#   t.integer "height"
#   t.integer "weight"
#   t.integer "age"
#   t.string "image", default: "https://252radio.com/wp-content/uploads/2016/11/default-user-image.png"
#   t.string "email"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.string "last_name"
# end

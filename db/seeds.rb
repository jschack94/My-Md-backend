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

doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "Internal Medicine", degree: "MD U Chicago", bio: Faker::Lorem.paragraph, residency: "Illinois Masonic", email: "doctor@hospital.com", image: "https://dvdbash.files.wordpress.com/2015/03/greys-anatomy-s10-jessica-capshaw-4-dvdbash.jpg" )
doctor_two = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "Cardiology", degree: "MD Northwestern", bio: Faker::Lorem.paragraph, residency: "Northwestern", email: "doctor2@hospital.com", image: "https://cdn1.edgedatg.com/aws/v2/abc/GreysAnatomy/person/736851/4a4fbc32cbe7d629710d6990978d092b/320x180-Q90_4a4fbc32cbe7d629710d6990978d092b.jpg" )
doctor_three = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "Orthopedic Surgery", degree: "MD Columbia University", bio: Faker::Lorem.paragraph, residency: "Rush North Shore", email: "doctor3@hospital.com", image: "https://www.dailyactor.com/wp-content/uploads/2013/08/sandra-oh-greys-anatomy.jpg" )
doctor_four = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "Anesthesiology", degree: "MD U of I", bio: Faker::Lorem.paragraph, residency: "Glenbrook", email: "doctor4@hospital.com", image: "https://actique.files.wordpress.com/2016/04/gas4meredithgrey1.jpg" )
doctor_five = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "Internal Medicine", degree: "MD Harvard", bio: Faker::Lorem.paragraph, residency: "General Hospital", email: "doctor5@hospital.com", image: "https://www.dailyactor.com/wp-content/uploads/2013/08/sandra-oh-greys-anatomy.jpg" )

patient = Patient.create(health_conditions: "High Blood Pressure", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, height: 67, weight: 200, age: 34, email: Faker::Internet.safe_email, image: "https://imgix.bustle.com/uploads/image/2018/3/26/b9a9d131-9c1b-4990-b3d2-0e0355989468-fotolia_188948342_subscription_monthly_m.jpg?w=970&h=546&fit=crop&crop=faces&auto=format&q=70&dpr=2")
appointment = Appointment.create(date: Faker::Date.forward(days: 23), time: Faker::Time.forward(days: 23, period: :morning), diagnosis: "Diabetes", directions: "Take Meds", doctor: doctor, patient: patient)
patient_two = Patient.create(health_conditions: "Arthritis", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, height: 60, weight: 150, age: 82, email: Faker::Internet.safe_email, image: "https://miro.medium.com/max/2144/0*T2ibWIG2fZ4up04E.jpg")
appointment_two = Appointment.create(date: Faker::Date.forward(days: 23), time: Faker::Time.forward(days: 23, period: :morning), diagnosis: "Ankle Sprain", directions: "Ice and Ibuprofen", doctor: doctor, patient: patient_two)
patient_three = Patient.create(health_conditions: "None", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, height: 63, weight: 120, age: 20, email: Faker::Internet.safe_email, image: "https://i.kinja-img.com/gawker-media/image/upload/c_scale,f_auto,fl_progressive,q_80,w_800/cplcc766u7disgdun8l1.jpg")
appointment_three = Appointment.create(date: Faker::Date.forward(days: 23), time: Faker::Time.forward(days: 23, period: :morning), diagnosis: "Allergic Reaction", directions: "Visit allergist for allergy testing", doctor: doctor, patient: patient_three)
patient_four = Patient.create(health_conditions: "Diabetes", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, height: 60, weight: 110, age: 70, email: Faker::Internet.safe_email)
appointment_four = Appointment.create(date: Faker::Date.forward(days: 23), time: Faker::Time.forward(days: 23, period: :morning), diagnosis: "Sinusitis", directions: "Take antibiotics once a day with meal.", doctor: doctor, patient: patient_four)
patient_five = Patient.create(health_conditions: "High Cholesterol", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, height: 70, weight: 180, age: 40, email: Faker::Internet.safe_email)
appointment_five = Appointment.create(date: Faker::Date.forward(days: 23), time: Faker::Time.forward(days: 23, period: :morning), diagnosis: "Influenza", directions: "Bed rest, ibuprofen and fluids.", doctor: doctor, patient: patient_five)




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

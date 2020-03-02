class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  
  validates_presence_of :date, :time, :diagnosis, :directions, :doctor_id, :patient_id
end

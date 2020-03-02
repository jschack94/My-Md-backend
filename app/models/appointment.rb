class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates_presence_of :date, :time, :diagnosis, :directions, :doctor_id, :patient_id, :stringified_date, :stringified_time

  def stringified_date
    string = self.date
    string.strftime("%A, %B %e, %Y")
  end

  def stringified_time
    string = self.time
    string.strftime("%l:%M %p")
  end
end

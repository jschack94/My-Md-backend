class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.datetime :time
      t.string :diagnosis
      t.string :directions
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end

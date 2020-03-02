class AddDefaultValuesToAppointments < ActiveRecord::Migration[6.0]
  def change
    change_column_default :appointments, :diagnosis, "N/A"
  end
end

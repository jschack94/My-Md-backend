class AddDefaultValueToAppointmentsDirections < ActiveRecord::Migration[6.0]
  def change
    change_column_default :appointments, :directions, "N/A"
  end
end

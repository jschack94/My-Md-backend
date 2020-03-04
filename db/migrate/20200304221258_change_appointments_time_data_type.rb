class ChangeAppointmentsTimeDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :time, :time
  end
end

class UpdateNameToFirstNameOnDoctorsTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :doctors, :name, :first_name
  end
end

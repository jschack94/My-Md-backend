class ChangeNameToFirstNameOnPatientsTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :patients, :name, :first_name
  end
end

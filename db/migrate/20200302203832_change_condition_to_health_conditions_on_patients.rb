class ChangeConditionToHealthConditionsOnPatients < ActiveRecord::Migration[6.0]
  def change
    rename_column :patients, :condition, :health_conditions
  end
end

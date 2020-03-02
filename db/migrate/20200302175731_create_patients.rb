class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :condition
      t.string :name
      t.integer :height
      t.integer :weight
      t.integer :age
      t.string :image
      t.string :email

      t.timestamps
    end
  end
end

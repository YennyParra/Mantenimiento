class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.string :type_machine
      t.string :Type_maintenance
      t.string :name_machine
      t.date :date
      t.string :email
      t.references :machines, foreign_key: true
      t.references :cities,  foreign_key: true
      t.references :materials, foreign_key: true

      t.timestamps
    end
  end
end

class CreateMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.string :type
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end

class CreateJoinTableMaterialsMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_join_table :materials, :maintenances do |t|
      # t.index [:material_id, :maintenance_id]
      # t.index [:maintenance_id, :material_id]
    end
  end
end

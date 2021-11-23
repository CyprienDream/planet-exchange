class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.float :co2_per_kilo

      t.timestamps
    end
  end
end

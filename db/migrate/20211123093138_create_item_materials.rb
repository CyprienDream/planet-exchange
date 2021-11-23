class CreateItemMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :item_materials do |t|
      t.float :percentage_weight
      t.references :item, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateItemStorages < ActiveRecord::Migration[6.0]
  def change
    create_table :item_storages do |t|
      t.text :specification
      t.references :storage, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end

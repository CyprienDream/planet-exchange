class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :avg_price
      t.float :carbon_footprint

      t.timestamps
    end
  end
end

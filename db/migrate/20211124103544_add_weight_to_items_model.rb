class AddWeightToItemsModel < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :weight, :float
  end
end

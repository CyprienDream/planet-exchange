class AddHeightToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :height, :float
  end
end

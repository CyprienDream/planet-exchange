class AddWidthToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :width, :float
  end
end

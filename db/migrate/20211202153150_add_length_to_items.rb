class AddLengthToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :length, :integer
  end
end

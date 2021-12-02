class ChangeTypeOfLengthToFloatInItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :length, :float
  end
end

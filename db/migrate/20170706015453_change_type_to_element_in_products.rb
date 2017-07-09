class ChangeTypeToElementInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :type, :element
  end
end

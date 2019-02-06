class RemoveStringFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :string, :string
  end
end

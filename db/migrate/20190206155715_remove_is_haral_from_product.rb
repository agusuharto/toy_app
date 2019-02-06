class RemoveIsHaralFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :is_halal, :string
  end
end

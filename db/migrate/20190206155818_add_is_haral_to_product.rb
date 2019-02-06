class AddIsHaralToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :is_haral, :boolean
  end
end

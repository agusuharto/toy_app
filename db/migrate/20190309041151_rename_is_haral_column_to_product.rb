class RenameIsHaralColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :is_haral, :is_halal
  end
end

class DeleteBarcode < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :barcode
  end
end

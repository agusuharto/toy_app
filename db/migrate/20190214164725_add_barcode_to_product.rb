class AddBarcodeToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :barcode, :integer
  end
end

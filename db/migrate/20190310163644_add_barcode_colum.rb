class AddBarcodeColum < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :barcode, :string
  end
end

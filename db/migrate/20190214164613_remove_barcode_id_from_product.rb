class RemoveBarcodeIdFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :barcode_id, :integer
  end
end

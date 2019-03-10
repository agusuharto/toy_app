class BarcodeColumnLimit < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :barcode, :integer, :limit=>8
  end
end

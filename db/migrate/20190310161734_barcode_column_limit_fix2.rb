class BarcodeColumnLimitFix2 < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :barcode, :integer, :limit=>4
  end
end

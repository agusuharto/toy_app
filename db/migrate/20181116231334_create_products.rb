class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :barcode_id
      t.string :name
      t.integer :price
      t.string :ingredients
      t.string :string
      t.string :is_halal
      t.string :bool

      t.timestamps
    end
  end
end

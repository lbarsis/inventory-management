class CreateInventoryScaffolds < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_scaffold do |t|
      t.integer :upc
      t.string :sku
      t.string :item_desc
      t.float :unit_price
      t.integer :quantity
      t.string :vendor

      t.timestamps
    end
  end
end

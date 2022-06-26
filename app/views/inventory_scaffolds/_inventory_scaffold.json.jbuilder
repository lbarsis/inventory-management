json.extract! inventory_scaffold, :id, :upc, :sku, :item_desc, :unit_price, :quantity, :vendor, :created_at, :updated_at
json.url inventory_scaffold_url(inventory_scaffold, format: :json)

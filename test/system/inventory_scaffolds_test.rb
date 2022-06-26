require "application_system_test_case"

class InventoryScaffoldsTest < ApplicationSystemTestCase
  setup do
    @inventory_scaffold = inventory_scaffolds(:one)
  end

  test "visiting the index" do
    visit inventory_scaffolds_url
    assert_selector "h1", text: "Inventory scaffolds"
  end

  test "should create inventory scaffold" do
    visit inventory_scaffolds_url
    click_on "New inventory scaffold"

    fill_in "Item desc", with: @inventory_scaffold.item_desc
    fill_in "Quantity", with: @inventory_scaffold.quantity
    fill_in "Sku", with: @inventory_scaffold.sku
    fill_in "Unit price", with: @inventory_scaffold.unit_price
    fill_in "Upc", with: @inventory_scaffold.upc
    fill_in "Vendor", with: @inventory_scaffold.vendor
    click_on "Create Inventory scaffold"

    assert_text "Inventory scaffold was successfully created"
    click_on "Back"
  end

  test "should update Inventory scaffold" do
    visit inventory_scaffold_url(@inventory_scaffold)
    click_on "Edit this inventory scaffold", match: :first

    fill_in "Item desc", with: @inventory_scaffold.item_desc
    fill_in "Quantity", with: @inventory_scaffold.quantity
    fill_in "Sku", with: @inventory_scaffold.sku
    fill_in "Unit price", with: @inventory_scaffold.unit_price
    fill_in "Upc", with: @inventory_scaffold.upc
    fill_in "Vendor", with: @inventory_scaffold.vendor
    click_on "Update Inventory scaffold"

    assert_text "Inventory scaffold was successfully updated"
    click_on "Back"
  end

  test "should destroy Inventory scaffold" do
    visit inventory_scaffold_url(@inventory_scaffold)
    click_on "Destroy this inventory scaffold", match: :first

    assert_text "Inventory scaffold was successfully destroyed"
  end
end

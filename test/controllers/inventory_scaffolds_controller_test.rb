require "test_helper"

class InventoryScaffoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_scaffold = inventory_scaffolds(:one)
  end

  test "should get index" do
    get inventory_scaffolds_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_scaffold_url
    assert_response :success
  end

  test "should create inventory_scaffold" do
    assert_difference("InventoryScaffold.count") do
      post inventory_scaffolds_url, params: { inventory_scaffold: { item_desc: @inventory_scaffold.item_desc, quantity: @inventory_scaffold.quantity, sku: @inventory_scaffold.sku, unit_price: @inventory_scaffold.unit_price, upc: @inventory_scaffold.upc, vendor: @inventory_scaffold.vendor } }
    end

    assert_redirected_to inventory_scaffold_url(InventoryScaffold.last)
  end

  test "should show inventory_scaffold" do
    get inventory_scaffold_url(@inventory_scaffold)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_scaffold_url(@inventory_scaffold)
    assert_response :success
  end

  test "should update inventory_scaffold" do
    patch inventory_scaffold_url(@inventory_scaffold), params: { inventory_scaffold: { item_desc: @inventory_scaffold.item_desc, quantity: @inventory_scaffold.quantity, sku: @inventory_scaffold.sku, unit_price: @inventory_scaffold.unit_price, upc: @inventory_scaffold.upc, vendor: @inventory_scaffold.vendor } }
    assert_redirected_to inventory_scaffold_url(@inventory_scaffold)
  end

  test "should destroy inventory_scaffold" do
    assert_difference("InventoryScaffold.count", -1) do
      delete inventory_scaffold_url(@inventory_scaffold)
    end

    assert_redirected_to inventory_scaffolds_url
  end
end

require 'test_helper'

class ProductPhysicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_physical = product_physicals(:one)
  end

  test "should get index" do
    get product_physicals_url
    assert_response :success
  end

  test "should get new" do
    get new_product_physical_url
    assert_response :success
  end

  test "should create product_physical" do
    assert_difference('ProductPhysical.count') do
      post product_physicals_url, params: { product_physical: { products_id: @product_physical.products_id } }
    end

    assert_redirected_to product_physical_url(ProductPhysical.last)
  end

  test "should show product_physical" do
    get product_physical_url(@product_physical)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_physical_url(@product_physical)
    assert_response :success
  end

  test "should update product_physical" do
    patch product_physical_url(@product_physical), params: { product_physical: { products_id: @product_physical.products_id } }
    assert_redirected_to product_physical_url(@product_physical)
  end

  test "should destroy product_physical" do
    assert_difference('ProductPhysical.count', -1) do
      delete product_physical_url(@product_physical)
    end

    assert_redirected_to product_physicals_url
  end
end

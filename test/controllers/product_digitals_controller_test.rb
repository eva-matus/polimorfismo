require 'test_helper'

class ProductDigitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_digital = product_digitals(:one)
  end

  test "should get index" do
    get product_digitals_url
    assert_response :success
  end

  test "should get new" do
    get new_product_digital_url
    assert_response :success
  end

  test "should create product_digital" do
    assert_difference('ProductDigital.count') do
      post product_digitals_url, params: { product_digital: { products_id: @product_digital.products_id } }
    end

    assert_redirected_to product_digital_url(ProductDigital.last)
  end

  test "should show product_digital" do
    get product_digital_url(@product_digital)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_digital_url(@product_digital)
    assert_response :success
  end

  test "should update product_digital" do
    patch product_digital_url(@product_digital), params: { product_digital: { products_id: @product_digital.products_id } }
    assert_redirected_to product_digital_url(@product_digital)
  end

  test "should destroy product_digital" do
    assert_difference('ProductDigital.count', -1) do
      delete product_digital_url(@product_digital)
    end

    assert_redirected_to product_digitals_url
  end
end

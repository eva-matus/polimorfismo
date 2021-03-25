require 'test_helper'

class PaypalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paypal = paypals(:one)
  end

  test "should get index" do
    get paypals_url
    assert_response :success
  end

  test "should get new" do
    get new_paypal_url
    assert_response :success
  end

  test "should create paypal" do
    assert_difference('Paypal.count') do
      post paypals_url, params: { paypal: {  } }
    end

    assert_redirected_to paypal_url(Paypal.last)
  end

  test "should show paypal" do
    get paypal_url(@paypal)
    assert_response :success
  end

  test "should get edit" do
    get edit_paypal_url(@paypal)
    assert_response :success
  end

  test "should update paypal" do
    patch paypal_url(@paypal), params: { paypal: {  } }
    assert_redirected_to paypal_url(@paypal)
  end

  test "should destroy paypal" do
    assert_difference('Paypal.count', -1) do
      delete paypal_url(@paypal)
    end

    assert_redirected_to paypals_url
  end
end

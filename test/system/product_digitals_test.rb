require "application_system_test_case"

class ProductDigitalsTest < ApplicationSystemTestCase
  setup do
    @product_digital = product_digitals(:one)
  end

  test "visiting the index" do
    visit product_digitals_url
    assert_selector "h1", text: "Product Digitals"
  end

  test "creating a Product digital" do
    visit product_digitals_url
    click_on "New Product Digital"

    fill_in "Products", with: @product_digital.products_id
    click_on "Create Product digital"

    assert_text "Product digital was successfully created"
    click_on "Back"
  end

  test "updating a Product digital" do
    visit product_digitals_url
    click_on "Edit", match: :first

    fill_in "Products", with: @product_digital.products_id
    click_on "Update Product digital"

    assert_text "Product digital was successfully updated"
    click_on "Back"
  end

  test "destroying a Product digital" do
    visit product_digitals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product digital was successfully destroyed"
  end
end

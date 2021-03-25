require "application_system_test_case"

class ProductPhysicalsTest < ApplicationSystemTestCase
  setup do
    @product_physical = product_physicals(:one)
  end

  test "visiting the index" do
    visit product_physicals_url
    assert_selector "h1", text: "Product Physicals"
  end

  test "creating a Product physical" do
    visit product_physicals_url
    click_on "New Product Physical"

    fill_in "Products", with: @product_physical.products_id
    click_on "Create Product physical"

    assert_text "Product physical was successfully created"
    click_on "Back"
  end

  test "updating a Product physical" do
    visit product_physicals_url
    click_on "Edit", match: :first

    fill_in "Products", with: @product_physical.products_id
    click_on "Update Product physical"

    assert_text "Product physical was successfully updated"
    click_on "Back"
  end

  test "destroying a Product physical" do
    visit product_physicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product physical was successfully destroyed"
  end
end

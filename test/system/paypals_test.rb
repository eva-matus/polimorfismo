require "application_system_test_case"

class PaypalsTest < ApplicationSystemTestCase
  setup do
    @paypal = paypals(:one)
  end

  test "visiting the index" do
    visit paypals_url
    assert_selector "h1", text: "Paypals"
  end

  test "creating a Paypal" do
    visit paypals_url
    click_on "New Paypal"

    click_on "Create Paypal"

    assert_text "Paypal was successfully created"
    click_on "Back"
  end

  test "updating a Paypal" do
    visit paypals_url
    click_on "Edit", match: :first

    click_on "Update Paypal"

    assert_text "Paypal was successfully updated"
    click_on "Back"
  end

  test "destroying a Paypal" do
    visit paypals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paypal was successfully destroyed"
  end
end

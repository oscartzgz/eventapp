require "application_system_test_case"

class Identity::AccountsTest < ApplicationSystemTestCase
  setup do
    @user = sign_in_as(users(:lazaro_nixon))
  end

  test "updating the name" do
    find("#userDropdown").click
    click_on "My account"

    fill_in "New name", with: "My new name"
    click_on "Save changes"

    assert_text "Your name has been changed"
  end

  test "convert into organizer" do
    find("#userDropdown").click
    click_on "My account"

    find("Do you want to organize events?").click
    click_button("I want to be an organizer")

    assert_text "You converted into organizer, now you can manage events."
  end
end

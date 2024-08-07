require "application_system_test_case"

class Identity::AccountsTest < ApplicationSystemTestCase
  setup do
    @user = sign_in_as(users(:lazaro_nixon))
  end

  test "updating the name" do
    find("#userDropdown").click
    click_on "Change name address"

    fill_in "New name", with: "new_email@hey.com"
    click_on "Save changes"

    assert_text "Your name has been changed"
  end

  test "convert into organizer" do
    @user.update! verified: false

    click_on "Change email address"
    click_on "Re-send verification email"

    assert_text "We sent a verification email to your email address"
  end
end

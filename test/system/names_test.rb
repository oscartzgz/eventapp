require "application_system_test_case"

class PasswordsTest < ApplicationSystemTestCase
  setup do
    @user = sign_in_as(users(:lazaro_nixon))
  end

  test "updating the password" do
    click_on "Change name"

    fill_in "New name", with: "Other name"
    click_on "Save changes"

    assert_text "Your name has been changed"
  end
end

require "application_system_test_case"

class AdminProfilesTest < ApplicationSystemTestCase
  setup do
    @admin_profile = admin_profiles(:one)
  end

  test "visiting the index" do
    visit admin_profiles_url
    assert_selector "h1", text: "Admin Profiles"
  end

  test "creating a Admin profile" do
    visit admin_profiles_url
    click_on "New Admin Profile"

    fill_in "Email", with: @admin_profile.email
    fill_in "Lastname", with: @admin_profile.lastname
    fill_in "Location", with: @admin_profile.location
    fill_in "Name", with: @admin_profile.name
    fill_in "Password", with: @admin_profile.password
    fill_in "Type", with: @admin_profile.type
    click_on "Create Admin profile"

    assert_text "Admin profile was successfully created"
    click_on "Back"
  end

  test "updating a Admin profile" do
    visit admin_profiles_url
    click_on "Edit", match: :first

    fill_in "Email", with: @admin_profile.email
    fill_in "Lastname", with: @admin_profile.lastname
    fill_in "Location", with: @admin_profile.location
    fill_in "Name", with: @admin_profile.name
    fill_in "Password", with: @admin_profile.password
    fill_in "Type", with: @admin_profile.type
    click_on "Update Admin profile"

    assert_text "Admin profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Admin profile" do
    visit admin_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admin profile was successfully destroyed"
  end
end

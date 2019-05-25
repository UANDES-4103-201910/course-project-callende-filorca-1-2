require "application_system_test_case"

class SuperAdminsTest < ApplicationSystemTestCase
  setup do
    @super_admin = super_admins(:one)
  end

  test "visiting the index" do
    visit super_admins_url
    assert_selector "h1", text: "Super Admins"
  end

  test "creating a Super admin" do
    visit super_admins_url
    click_on "New Super Admin"

    fill_in "Admin profile", with: @super_admin.admin_profile_id
    click_on "Create Super admin"

    assert_text "Super admin was successfully created"
    click_on "Back"
  end

  test "updating a Super admin" do
    visit super_admins_url
    click_on "Edit", match: :first

    fill_in "Admin profile", with: @super_admin.admin_profile_id
    click_on "Update Super admin"

    assert_text "Super admin was successfully updated"
    click_on "Back"
  end

  test "destroying a Super admin" do
    visit super_admins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Super admin was successfully destroyed"
  end
end

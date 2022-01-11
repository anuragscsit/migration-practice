require "application_system_test_case"

class DesiplinesTest < ApplicationSystemTestCase
  setup do
    @desipline = desiplines(:one)
  end

  test "visiting the index" do
    visit desiplines_url
    assert_selector "h1", text: "Desiplines"
  end

  test "creating a Desipline" do
    visit desiplines_url
    click_on "New Desipline"

    fill_in "Name", with: @desipline.name
    click_on "Create Desipline"

    assert_text "Desipline was successfully created"
    click_on "Back"
  end

  test "updating a Desipline" do
    visit desiplines_url
    click_on "Edit", match: :first

    fill_in "Name", with: @desipline.name
    click_on "Update Desipline"

    assert_text "Desipline was successfully updated"
    click_on "Back"
  end

  test "destroying a Desipline" do
    visit desiplines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Desipline was successfully destroyed"
  end
end

require "application_system_test_case"

class TotoListsTest < ApplicationSystemTestCase
  setup do
    @toto_list = toto_lists(:one)
  end

  test "visiting the index" do
    visit toto_lists_url
    assert_selector "h1", text: "Toto Lists"
  end

  test "creating a Toto list" do
    visit toto_lists_url
    click_on "New Toto List"

    fill_in "Description", with: @toto_list.description
    fill_in "Title", with: @toto_list.title
    click_on "Create Toto list"

    assert_text "Toto list was successfully created"
    click_on "Back"
  end

  test "updating a Toto list" do
    visit toto_lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @toto_list.description
    fill_in "Title", with: @toto_list.title
    click_on "Update Toto list"

    assert_text "Toto list was successfully updated"
    click_on "Back"
  end

  test "destroying a Toto list" do
    visit toto_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Toto list was successfully destroyed"
  end
end

require "application_system_test_case"

class HtmxpostsTest < ApplicationSystemTestCase
  setup do
    @htmxpost = htmxposts(:one)
  end

  test "visiting the index" do
    visit htmxposts_url
    assert_selector "h1", text: "Htmxposts"
  end

  test "should create htmxpost" do
    visit htmxposts_url
    click_on "New htmxpost"

    fill_in "Body", with: @htmxpost.body
    fill_in "Title", with: @htmxpost.title
    click_on "Create Htmxpost"

    assert_text "Htmxpost was successfully created"
    click_on "Back"
  end

  test "should update Htmxpost" do
    visit htmxpost_url(@htmxpost)
    click_on "Edit this htmxpost", match: :first

    fill_in "Body", with: @htmxpost.body
    fill_in "Title", with: @htmxpost.title
    click_on "Update Htmxpost"

    assert_text "Htmxpost was successfully updated"
    click_on "Back"
  end

  test "should destroy Htmxpost" do
    visit htmxpost_url(@htmxpost)
    click_on "Destroy this htmxpost", match: :first

    assert_text "Htmxpost was successfully destroyed"
  end
end

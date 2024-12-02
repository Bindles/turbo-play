require "test_helper"

class HtmxpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @htmxpost = htmxposts(:one)
  end

  test "should get index" do
    get htmxposts_url
    assert_response :success
  end

  test "should get new" do
    get new_htmxpost_url
    assert_response :success
  end

  test "should create htmxpost" do
    assert_difference("Htmxpost.count") do
      post htmxposts_url, params: { htmxpost: { body: @htmxpost.body, title: @htmxpost.title } }
    end

    assert_redirected_to htmxpost_url(Htmxpost.last)
  end

  test "should show htmxpost" do
    get htmxpost_url(@htmxpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_htmxpost_url(@htmxpost)
    assert_response :success
  end

  test "should update htmxpost" do
    patch htmxpost_url(@htmxpost), params: { htmxpost: { body: @htmxpost.body, title: @htmxpost.title } }
    assert_redirected_to htmxpost_url(@htmxpost)
  end

  test "should destroy htmxpost" do
    assert_difference("Htmxpost.count", -1) do
      delete htmxpost_url(@htmxpost)
    end

    assert_redirected_to htmxposts_url
  end
end

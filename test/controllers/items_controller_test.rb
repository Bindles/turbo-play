require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get items_index_url
    assert_response :success
  end

  test "should get _form" do
    get items__form_url
    assert_response :success
  end

  test "should get _item" do
    get items__item_url
    assert_response :success
  end
end

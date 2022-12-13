require "test_helper"

class CartLineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart_line_item = cart_line_items(:one)
  end

  test "should get index" do
    get cart_line_items_url
    assert_response :success
  end

  test "should get new" do
    get new_cart_line_item_url
    assert_response :success
  end

  test "should create cart_line_item" do
    assert_difference("CartLineItem.count") do
      post cart_line_items_url, params: { cart_line_item: { ShoppingCart_id: @cart_line_item.ShoppingCart_id, product_id: @cart_line_item.product_id } }
    end

    assert_redirected_to cart_line_item_url(CartLineItem.last)
  end

  test "should show cart_line_item" do
    get cart_line_item_url(@cart_line_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_cart_line_item_url(@cart_line_item)
    assert_response :success
  end

  test "should update cart_line_item" do
    patch cart_line_item_url(@cart_line_item), params: { cart_line_item: { ShoppingCart_id: @cart_line_item.ShoppingCart_id, product_id: @cart_line_item.product_id } }
    assert_redirected_to cart_line_item_url(@cart_line_item)
  end

  test "should destroy cart_line_item" do
    assert_difference("CartLineItem.count", -1) do
      delete cart_line_item_url(@cart_line_item)
    end

    assert_redirected_to cart_line_items_url
  end
end

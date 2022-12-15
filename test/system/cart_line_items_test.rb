# frozen_string_literal: true

require 'application_system_test_case'

class CartLineItemsTest < ApplicationSystemTestCase
  setup do
    @cart_line_item = cart_line_items(:one)
  end

  test 'visiting the index' do
    visit cart_line_items_url
    assert_selector 'h1', text: 'Cart line items'
  end

  test 'should create cart line item' do
    visit cart_line_items_url
    click_on 'New cart line item'

    fill_in 'Shoppingcart', with: @cart_line_item.ShoppingCart_id
    fill_in 'Product', with: @cart_line_item.product_id
    click_on 'Create Cart line item'

    assert_text 'Cart line item was successfully created'
    click_on 'Back'
  end

  test 'should update Cart line item' do
    visit cart_line_item_url(@cart_line_item)
    click_on 'Edit this cart line item', match: :first

    fill_in 'Shoppingcart', with: @cart_line_item.ShoppingCart_id
    fill_in 'Product', with: @cart_line_item.product_id
    click_on 'Update Cart line item'

    assert_text 'Cart line item was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Cart line item' do
    visit cart_line_item_url(@cart_line_item)
    click_on 'Destroy this cart line item', match: :first

    assert_text 'Cart line item was successfully destroyed'
  end
end

# frozen_string_literal: true

require 'application_system_test_case'

class ProdCategoriesTest < ApplicationSystemTestCase
  setup do
    @prod_category = prod_categories(:one)
  end

  test 'visiting the index' do
    visit prod_categories_url
    assert_selector 'h1', text: 'Prod categories'
  end

  test 'should create prod category' do
    visit prod_categories_url
    click_on 'New prod category'

    fill_in 'Categoryid', with: @prod_category.categoryId
    fill_in 'Name', with: @prod_category.name
    click_on 'Create Prod category'

    assert_text 'Prod category was successfully created'
    click_on 'Back'
  end

  test 'should update Prod category' do
    visit prod_category_url(@prod_category)
    click_on 'Edit this prod category', match: :first

    fill_in 'Categoryid', with: @prod_category.categoryId
    fill_in 'Name', with: @prod_category.name
    click_on 'Update Prod category'

    assert_text 'Prod category was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Prod category' do
    visit prod_category_url(@prod_category)
    click_on 'Destroy this prod category', match: :first

    assert_text 'Prod category was successfully destroyed'
  end
end

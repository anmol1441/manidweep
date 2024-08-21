require "application_system_test_case"

class SubCategoriesTest < ApplicationSystemTestCase
  setup do
    @sub_category = sub_categories(:one)
  end

  test "visiting the index" do
    visit sub_categories_url
    assert_selector "h1", text: "Sub categories"
  end

  test "should create sub category" do
    visit sub_categories_url
    click_on "New sub category"

    fill_in "Details en", with: @sub_category.details_en
    fill_in "Details hi", with: @sub_category.details_hi
    fill_in "Name en", with: @sub_category.name_en
    fill_in "Name hi", with: @sub_category.name_hi
    fill_in "Order", with: @sub_category.order
    fill_in "Page content en", with: @sub_category.page_content_en
    fill_in "Page content hi", with: @sub_category.page_content_hi
    fill_in "Slug", with: @sub_category.slug
    fill_in "Super category", with: @sub_category.super_category_id
    fill_in "User", with: @sub_category.user_id
    click_on "Create Sub category"

    assert_text "Sub category was successfully created"
    click_on "Back"
  end

  test "should update Sub category" do
    visit sub_category_url(@sub_category)
    click_on "Edit this sub category", match: :first

    fill_in "Details en", with: @sub_category.details_en
    fill_in "Details hi", with: @sub_category.details_hi
    fill_in "Name en", with: @sub_category.name_en
    fill_in "Name hi", with: @sub_category.name_hi
    fill_in "Order", with: @sub_category.order
    fill_in "Page content en", with: @sub_category.page_content_en
    fill_in "Page content hi", with: @sub_category.page_content_hi
    fill_in "Slug", with: @sub_category.slug
    fill_in "Super category", with: @sub_category.super_category_id
    fill_in "User", with: @sub_category.user_id
    click_on "Update Sub category"

    assert_text "Sub category was successfully updated"
    click_on "Back"
  end

  test "should destroy Sub category" do
    visit sub_category_url(@sub_category)
    click_on "Destroy this sub category", match: :first

    assert_text "Sub category was successfully destroyed"
  end
end

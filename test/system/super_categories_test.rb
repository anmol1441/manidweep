require "application_system_test_case"

class SuperCategoriesTest < ApplicationSystemTestCase
  setup do
    @super_category = super_categories(:one)
  end

  test "visiting the index" do
    visit super_categories_url
    assert_selector "h1", text: "Super categories"
  end

  test "should create super category" do
    visit super_categories_url
    click_on "New super category"

    fill_in "Details en", with: @super_category.details_en
    fill_in "Details hi", with: @super_category.details_hi
    fill_in "Name en", with: @super_category.name_en
    fill_in "Name hi", with: @super_category.name_hi
    fill_in "Order", with: @super_category.order
    fill_in "Slug", with: @super_category.slug
    check "Status" if @super_category.status
    fill_in "User", with: @super_category.user_id
    click_on "Create Super category"

    assert_text "Super category was successfully created"
    click_on "Back"
  end

  test "should update Super category" do
    visit super_category_url(@super_category)
    click_on "Edit this super category", match: :first

    fill_in "Details en", with: @super_category.details_en
    fill_in "Details hi", with: @super_category.details_hi
    fill_in "Name en", with: @super_category.name_en
    fill_in "Name hi", with: @super_category.name_hi
    fill_in "Order", with: @super_category.order
    fill_in "Slug", with: @super_category.slug
    check "Status" if @super_category.status
    fill_in "User", with: @super_category.user_id
    click_on "Update Super category"

    assert_text "Super category was successfully updated"
    click_on "Back"
  end

  test "should destroy Super category" do
    visit super_category_url(@super_category)
    click_on "Destroy this super category", match: :first

    assert_text "Super category was successfully destroyed"
  end
end

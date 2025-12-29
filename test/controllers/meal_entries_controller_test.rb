require "test_helper"

class MealEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal_entry = meal_entries(:one)
  end

  test "should get index" do
    get meal_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_entry_url
    assert_response :success
  end

  test "should create meal_entry" do
    assert_difference("MealEntry.count") do
      post meal_entries_url, params: { meal_entry: { calories: @meal_entry.calories, carbohydrates: @meal_entry.carbohydrates, fats: @meal_entry.fats, mean_type: @meal_entry.mean_type, proteins: @meal_entry.proteins } }
    end

    assert_redirected_to meal_entry_url(MealEntry.last)
  end

  test "should show meal_entry" do
    get meal_entry_url(@meal_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_entry_url(@meal_entry)
    assert_response :success
  end

  test "should update meal_entry" do
    patch meal_entry_url(@meal_entry), params: { meal_entry: { calories: @meal_entry.calories, carbohydrates: @meal_entry.carbohydrates, fats: @meal_entry.fats, mean_type: @meal_entry.mean_type, proteins: @meal_entry.proteins } }
    assert_redirected_to meal_entry_url(@meal_entry)
  end

  test "should destroy meal_entry" do
    assert_difference("MealEntry.count", -1) do
      delete meal_entry_url(@meal_entry)
    end

    assert_redirected_to meal_entries_url
  end
end

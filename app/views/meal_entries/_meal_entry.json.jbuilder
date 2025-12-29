json.extract! meal_entry, :id, :mean_type, :calories, :proteins, :carbohydrates, :fats, :created_at, :updated_at
json.url meal_entry_url(meal_entry, format: :json)

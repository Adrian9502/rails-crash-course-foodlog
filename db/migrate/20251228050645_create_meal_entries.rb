class CreateMealEntries < ActiveRecord::Migration[8.1]
  def change
    create_table :meal_entries do |t|
      t.string :mean_type
      t.integer :calories
      t.integer :proteins
      t.integer :carbohydrates
      t.integer :fats

      t.timestamps
    end
  end
end

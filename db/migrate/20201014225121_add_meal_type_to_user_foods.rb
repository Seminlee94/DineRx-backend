class AddMealTypeToUserFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :user_foods, :meal_types, :string
    add_column :user_foods, :meal_schedule, :string
  end
end

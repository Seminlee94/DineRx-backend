class DeleteIngredientsIdFromUserIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_ingredients, :ingredients_id, :integer
    remove_column :user_ingredients, :user_foods_id, :integer

    add_column :user_ingredients, :ingredient_id, :integer
    add_column :user_ingredients, :user_food_id, :integer
  end
end

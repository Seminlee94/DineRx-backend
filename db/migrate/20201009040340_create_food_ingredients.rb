class CreateFoodIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :food_ingredients do |t|

      t.timestamps
    end
  end
end

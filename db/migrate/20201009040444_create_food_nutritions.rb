class CreateFoodNutritions < ActiveRecord::Migration[6.0]
  def change
    create_table :food_nutritions do |t|
      t.integer :food_id
      t.integer :nutrition_id
      t.timestamps
    end
  end
end

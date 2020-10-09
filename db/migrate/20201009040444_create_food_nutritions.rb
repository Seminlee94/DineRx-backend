class CreateFoodNutritions < ActiveRecord::Migration[6.0]
  def change
    create_table :food_nutritions do |t|

      t.timestamps
    end
  end
end

class CreateUserIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :user_ingredients do |t|
      t.integer :user_foods_id
      t.integer :ingredients_id

      t.timestamps
    end
  end
end

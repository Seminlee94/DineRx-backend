class Ingredient < ApplicationRecord
    has_many :food_ingredients
    has_many :foods, through: :food_ingredients

    has_many :user_ingredients
    has_many :user_foods, through: :user_ingredients
end

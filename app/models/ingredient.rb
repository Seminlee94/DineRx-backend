class Ingredient < ApplicationRecord
    has_many :food_ingredients
    has_many :food, through: :food_ingredients
end

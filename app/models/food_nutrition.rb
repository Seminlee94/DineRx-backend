class FoodNutrition < ApplicationRecord
    belongs_to :nutrition
    belongs_to :food
end

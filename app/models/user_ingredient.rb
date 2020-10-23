class UserIngredient < ApplicationRecord
    belongs_to :user_food
    belongs_to :ingredient
end

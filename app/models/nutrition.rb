class Nutrition < ApplicationRecord
    has_many :food_nutritions
    has_many :foods, through: :food_nutritions
end

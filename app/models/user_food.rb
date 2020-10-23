class UserFood < ApplicationRecord
    belongs_to :user
    belongs_to :food

    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients
end

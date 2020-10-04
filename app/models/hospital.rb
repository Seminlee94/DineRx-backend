class Hospital < ApplicationRecord
    has_many :users
    has_many :diets
end

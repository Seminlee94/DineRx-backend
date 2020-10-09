class Hospital < ApplicationRecord
    has_many :users
    has_many :hospital_foods
    has_many :foods, through: :hospital_foods
end

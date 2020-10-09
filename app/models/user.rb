class User < ApplicationRecord
    has_secure_password
    has_many :user_allergies
    has_many :allergies, through: :user_allergies
    has_many :user_foods
    has_many :foods, through: :user_foods

    belongs_to :hospital

end

class User < ApplicationRecord
    has_secure_password
    has_many :user_allergies
    has_many :allergies, through: :user_allergies
    has_many :user_foods
    has_many :foods, through: :user_foods
    has_many :user_orders
    has_many :orders, through: :user_orders

    belongs_to :hospital

end

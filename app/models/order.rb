class Order < ApplicationRecord
    has_many :user_orders
    has_many :users, through: :user_orders
end

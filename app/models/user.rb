class User < ApplicationRecord
    has_secure_password
    belongs_to :hospital
    belongs_to :diet
    has_many :orders
    # validates :hospital

end

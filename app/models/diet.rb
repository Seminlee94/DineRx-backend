class Diet < ApplicationRecord
    belongs_to :hospital
    has_many :users, through: :hospital, source: :hospital
end

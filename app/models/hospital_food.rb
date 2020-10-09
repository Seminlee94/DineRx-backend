class HospitalFood < ApplicationRecord
    belongs_to :hospital
    belongs_to :food
end

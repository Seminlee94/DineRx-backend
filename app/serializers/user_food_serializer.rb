class UserFoodSerializer < ActiveModel::Serializer
  attributes :id, :food_id, :user_id

  def initialize(user_food_obj)
    @user_food_obj = user_food_obj
  end

  def to_serialized_json
    @user_food_obj.to_json(
        :include => {
            :food => {
              :except => [:created_at, :updated_at]
            },
            :user => {
              :except => [:created_at, :updated_at]  
            }
        }
    )
  end

end

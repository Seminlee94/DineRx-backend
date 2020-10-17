class UserFoodSerializer < ActiveModel::Serializer
  attributes :id, :food_id, :user_id, :meal_types, :meal_schedule

  def initialize(user_food_obj)
    @user_food_obj = user_food_obj
  end

  def to_serialized_json
    @user_food_obj.to_json(
        :include => {
            :food => {
              :include => [:ingredients, :nutritions]
            },
            :user => {
              :except => [:created_at, :updated_at]  
            }
        }
    )
  end

end

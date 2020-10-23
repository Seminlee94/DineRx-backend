class UserIngredientSerializer < ActiveModel::Serializer
  attributes :id, :user_food, :ingredient

  def initialize(user_ingredient_obj)
    @user_ingredient_obj = user_ingredient_obj
  end

  def to_serialized_json
    @user_ingredient_obj.to_json(
        :include => {
            :user_food => {
              :include => [:user, :food]
            },
            :ingredient => {
              :except => [:created_at, :updated_at]  
            }
        }
    )
  end
end

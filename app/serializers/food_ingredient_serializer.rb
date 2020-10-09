class FoodIngredientSerializer < ActiveModel::Serializer
  attributes :id, :food_id, :ingredient_id

  def initialize(food_ingredient_obj)
    @food_ingredient_obj = food_ingredient_obj
  end

  def to_serialized_json
    @food_ingredient_obj.to_json(
        :include => {
            :food => {
              :except => [:created_at, :updated_at]
            },
            :ingredient => {
              :except => [:created_at, :updated_at]  
            }
        }
    )
  end

end

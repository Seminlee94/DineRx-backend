class FoodNutritionSerializer < ActiveModel::Serializer
  attributes :id, :food_id, :nutrition_id

  def initialize(food_nutrition_obj)
    @food_nutrition_obj = food_nutrition_obj
  end

  def to_serialized_json
    @food_nutrition_obj.to_json(
        :include => {
            :food => {
              :except => [:created_at, :updated_at]
            },
            :nutrition => {
              :except => [:created_at, :updated_at]  
            }
        }
    )
  end

end

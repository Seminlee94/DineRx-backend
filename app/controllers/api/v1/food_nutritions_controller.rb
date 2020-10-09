class Api::V1::FoodNutritionsController < ApplicationController
    def index
        food_nutritions = FoodNutrition.all

        # render json: food_nutritions, except: [:created_at, :updated_at]
        render json: FoodNutritionSerializer.new(food_nutritions).to_serialized_json
    end
    
    def show
        food_nutrition = FoodNutrition.find(params[:id])
        render json: FoodNutritionSerializer.new(food_nutrition).to_serialized_json
        # render json: food_nutrition, except: [:created_at, :updated_at]
    end

    def create
        food_nutrition = FoodNutrition.create(food_nutrition_params)
        render json: FoodNutritionSerializer.new(food_nutrition).to_serialized_json
        # render json: food_nutrition, except: [:created_at, :updated_at]
    end
    
    def update
        food_nutrition = FoodNutrition.find(params[:id])
        food_nutrition.update(food_nutrition_params)
        render json: FoodNutritionSerializer.new(food_nutrition).to_serialized_json
        # render json: food_nutrition, except: [:created_at, :updated_at]
    end

    def delete
        food_nutrition = FoodNutrition.find(params[:id])

        render json: {}
    end
    
    private
    
    def food_nutrition_params
        params.require(:food_nutrition).permit(:food_id, :nutrition_id )
    end
end

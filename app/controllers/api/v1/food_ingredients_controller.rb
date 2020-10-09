class Api::V1::FoodIngredientsController < ApplicationController
    def index
        food_ingredients = FoodIngredient.all

        # render json: food_ingredients, except: [:created_at, :updated_at]
        render json: FoodIngredientSerializer.new(food_ingredients).to_serialized_json
    end
    
    def show
        food_ingredient = FoodIngredient.find(params[:id])
        render json: FoodIngredientSerializer.new(food_ingredient).to_serialized_json
        # render json: food_ingredient, except: [:created_at, :updated_at]
    end

    def create
        food_ingredient = FoodIngredient.create(food_ingredient_params)
        render json: FoodIngredientSerializer.new(food_ingredient).to_serialized_json
        # render json: food_ingredient, except: [:created_at, :updated_at]
    end
    
    def update
        food_ingredient = FoodIngredient.find(params[:id])
        food_ingredient.update(food_ingredient_params)
        render json: FoodIngredientSerializer.new(food_ingredient).to_serialized_json
        # render json: food_ingredient, except: [:created_at, :updated_at]
    end

    def delete
        food_ingredient = FoodIngredient.find(params[:id])

        render json: {}
    end
    
    private
    
    def food_ingredient_params
        params.require(:food_ingredient).permit(:food_id, :ingredient_id )
    end
end

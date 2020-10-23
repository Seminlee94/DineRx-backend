class Api::V1::UserIngredientsController < ApplicationController
    def index
        user_ingredients = UserIngredient.all

        # render json: user_ingredients, except: [:created_at, :updated_at]
        render json: UserIngredientSerializer.new(user_ingredients).to_serialized_json
    end
    
    def show
        user_ingredient = UserIngredient.find(params[:id])
        render json: UserIngredientSerializer.new(user_ingredient).to_serialized_json
        # render json: user_ingredient, except: [:created_at, :updated_at]
    end

    def create
        # byebug
        user_ingredient = UserIngredient.create(user_ingredient_params)
        render json: UserIngredientSerializer.new(user_ingredient).to_serialized_json
        # render json: user_ingredient, except: [:created_at, :updated_at]
    end
    
    def update
        user_ingredient = UserIngredient.find(params[:id])
        user_ingredient.update(user_ingredient_params)
        render json: UserIngredientSerializer.new(user_ingredient).to_serialized_json
        # render json: user_ingredient, except: [:created_at, :updated_at]
    end

    def destroy
        # byebug
        user_ingredient = UserIngredient.find(params[:id])
        user_ingredient.destroy
        render json: {}
    end
    
    private
    
    def user_ingredient_params
        params.require(:user_ingredients).permit(:user_food_id, :ingredient_id)
    end
end


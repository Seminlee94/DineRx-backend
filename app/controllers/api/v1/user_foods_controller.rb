class Api::V1::UserFoodsController < ApplicationController
    def index
        user_foods = UserFood.all

        # render json: user_foods, except: [:created_at, :updated_at]
        render json: UserFoodSerializer.new(user_foods).to_serialized_json
    end
    
    def show
        user_food = UserFood.find(params[:id])
        render json: UserFoodSerializer.new(user_food).to_serialized_json
        # render json: user_food, except: [:created_at, :updated_at]
    end

    def create
        user_food = UserFood.create(user_food_params)
        render json: UserFoodSerializer.new(user_food).to_serialized_json
        # render json: user_food, except: [:created_at, :updated_at]
    end
    
    def update
        user_food = UserFood.find(params[:id])
        user_food.update(user_food_params)
        render json: UserFoodSerializer.new(user_food).to_serialized_json
        # render json: user_food, except: [:created_at, :updated_at]
    end

    def delete
        user_food = UserFood.find(params[:id])

        render json: {}
    end
    
    private
    
    def user_food_params
        params.require(:user_food).permit(:food_id, :user_id )
    end
end

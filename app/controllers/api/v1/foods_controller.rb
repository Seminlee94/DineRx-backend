class Api::V1::FoodsController < ApplicationController
    def index
        foods = Food.all

        render json: foods, except: [:created_at, :updated_at]
    end
    
    def show
        food = Food.find(params[:id])
        render json: food, except: [:created_at, :updated_at]
    end

    def create
        food = Food.create(food_params)
        render json: food, except: [:created_at, :updated_at]
    end
    
    def update
        food = Food.find(params[:id])
        food.update(food_params)
        render json: food, except: [:created_at, :updated_at]
    end

    def delete
        food = Food.find(params[:id])

    render json: {}
    end
    
    private
    
    def food_params
        params.require(:food).permit(:name, :image, :description, :category, :regular, :cardiac, :low_sodium, :liquid, :low_iodine, :pureed, :diabetic, :vegetarian, :breakfast, :lunch, :dinner)
    end
end

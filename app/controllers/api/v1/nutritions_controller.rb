class Api::V1::NutritionsController < ApplicationController
    def index
        nutritions = Nutrition.all

        render json: nutritions, except: [:created_at, :updated_at]
    end
    
    def show
        nutrition = Nutrition.find(params[:id])
        render json: nutrition, except: [:created_at, :updated_at]
    end

    def create
        nutrition = Nutrition.create(nutrition_params)
        render json: nutrition, except: [:created_at, :updated_at]
    end
    
    def update
        nutrition = Nutrition.find(params[:id])
        nutrition.update(nutrition_params)
        render json: nutrition, except: [:created_at, :updated_at]
    end

    def delete
        nutrition = Nutrition.find(params[:id])

        render json: {}
    end
    
    private
    
    def nutrition_params
        params.require(:nutrition).permit(:title, :amount)
    end
end

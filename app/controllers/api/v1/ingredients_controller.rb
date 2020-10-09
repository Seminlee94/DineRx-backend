class Api::V1::IngredientsController < ApplicationController
    def index
        ingredients =Ingredient.all

        render json: ingredients, except: [:created_at, :updated_at]
    end
    
    def show
        ingredient =Ingredient.find(params[:id])
        render json: ingredient, except: [:created_at, :updated_at]
    end

    def create
        ingredient =Ingredient.create(ingredient_params)
        render json: ingredient, except: [:created_at, :updated_at]
    end
    
    def update
        ingredient =Ingredient.find(params[:id])
        ingredient.update(ingredient_params)
        render json: ingredient, except: [:created_at, :updated_at]
    end

    def delete
        ingredient =Ingredient.find(params[:id])

        render json: {}
    end
    
    private
    
    def ingredient_params
        params.require(:ingredient).permit(:name, :image)
    end
end

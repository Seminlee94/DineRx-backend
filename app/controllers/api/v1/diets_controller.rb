class Api::V1::DietsController < ApplicationController

    def index
        diets = Diet.all

        render json: diets, except: [:created_at, :updated_at]
    end
    
    def show
        diet = Diet.find(params[:id])
        render json: diet, except: [:created_at, :updated_at]
    end

    def create
        diet = Diet.create(diet_params)
        render json: diet, except: [:created_at, :updated_at]
    end
    
    def update
        diet = Diet.find(params[:id])
        diet.update(diet_params)
        render json: diet, except: [:created_at, :updated_at]
    end

    def delete
        diet = Diet.find(params[:id])

        render json: {}
    end
    
    private
    
    def diet_params
        params.require(:diet).permit(:name, :hospital_id )
    end

end

class Api::V1::AllergiesController < ApplicationController
    def index
        allergies = Allergy.all

        render json: allergies, except: [:created_at, :updated_at]
    end
    
    def show
        allergy = Allergy.find(params[:id])
        render json: allergy, except: [:created_at, :updated_at]
    end

    def create
        allergy = Allergy.create(allergy_params)
        render json: allergy, except: [:created_at, :updated_at]
    end
    
    def update
        allergy = Allergy.find(params[:id])
        allergy.update(allergy_params)
        render json: allergy, except: [:created_at, :updated_at]
    end

    def delete
        allergy = Allergy.find(params[:id])

        render json: {}
    end
    
    private
    
    def allergy_params
        params.require(:allergy).permit(:name)
    end
end

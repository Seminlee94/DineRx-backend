class Api::V1::UserAllergiesController < ApplicationController
    def index
        user_allergies = UserAllergy.all

        # render json: user_allergies, except: [:created_at, :updated_at]
        render json: UserAllergySerializer.new(user_allergies).to_serialized_json
    end
    
    def show
        user_allergy = UserAllergy.find(params[:id])
        render json: UserAllergySerializer.new(user_allergy).to_serialized_json
        # render json: user_allergy, except: [:created_at, :updated_at]
    end

    def create
        user_allergy = UserAllergy.create(user_allergy_params)
        render json: UserAllergySerializer.new(user_allergy).to_serialized_json
        # render json: user_allergy, except: [:created_at, :updated_at]
    end
    
    def update
        user_allergy = UserAllergy.find(params[:id])
        user_allergy.update(user_allergy_params)
        render json: UserAllergySerializer.new(user_allergy).to_serialized_json
        # render json: user_allergy, except: [:created_at, :updated_at]
    end

    def delete
        user_allergy = UserAllergy.find(params[:id])

        render json: {}
    end
    
    private
    
    def user_allergy_params
        params.require(:user_allergy).permit(:allergy_id, :user_id )
    end
end

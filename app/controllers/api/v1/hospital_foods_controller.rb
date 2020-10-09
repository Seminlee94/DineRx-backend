class Api::V1::HospitalFoodsController < ApplicationController
    def index
        hospital_foods = HospitalFood.all

        # render json: hospital_foods, except: [:created_at, :updated_at]
        render json: HospitalFoodSerializer.new(hospital_foods).to_serialized_json
    end
    
    def show
        hospital_food = HospitalFood.find(params[:id])
        render json: HospitalFoodSerializer.new(hospital_food).to_serialized_json
        # render json: hospital_food, except: [:created_at, :updated_at]
    end

    def create
        hospital_food = HospitalFood.create(hospital_food_params)
        render json: HospitalFoodSerializer.new(hospital_food).to_serialized_json
        # render json: hospital_food, except: [:created_at, :updated_at]
    end
    
    def update
        hospital_food = HospitalFood.find(params[:id])
        hospital_food.update(hospital_food_params)
        render json: HospitalFoodSerializer.new(hospital_food).to_serialized_json
        # render json: hospital_food, except: [:created_at, :updated_at]
    end

    def delete
        hospital_food = HospitalFood.find(params[:id])

        render json: {}
    end
    
    private
    
    def hospital_food_params
        params.require(:hospital_food).permit(:food_id, :hospital_id )
    end
end

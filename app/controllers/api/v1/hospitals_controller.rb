class Api::V1::HospitalsController < ApplicationController

    def index
        hospitals = Hospital.all

        render json: hospitals, except: [:created_at, :updated_at]
    end
    
    def show
        hospital = Hospital.find(params[:id])
        render json: hospital, except: [:created_at, :updated_at]
    end

    def create
        hospital = Hospital.create(hospital_params)
        render json: hospital, except: [:created_at, :updated_at]
    end
    
    def update
        hospital = Hospital.find(params[:id])
        hospital.update(hospital_params)
        render json: hospital, except: [:created_at, :updated_at]
    end

    def delete
        hospital = Hospital.find(params[:id])

        render json: {}
    end
    
    private
    
    def hospital_params
        params.require(:hospital).permit(:name, :health_system, :city )
    end

end

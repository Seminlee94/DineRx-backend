class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
        # render json: UserSerializer.new(users).to_serialized_json
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
        # render json: UserSerializer.new(user).to_serialized_json
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          @token = encode_token({ user_id: @user.id })
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end
     
      private
     
    def user_params
        params.require(:user).permit(:name, :password, :dob, :department, :room, :diet, :restrictions, :hospital_id)
    end
     
end

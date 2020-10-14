class Api::V1::AuthController < ApplicationController
    # skip_before_action :authorized, only: [:create]
   
    def create
      @hospital = Hospital.find_by(name: params[:hospital])
      @user = User.find_by(name: params[:name], hospital: @hospital.id, dob: params[:dob])
      # @user = User.find_by(name: params[:name], dob: params[:dob])
      # @user = User.find_by(name: user_login_params[:name], dob: user_login_params[:dob])
      # @user = User.find_by(name: user_login_params[:name], hospital_id: @hospital.id, dob: user_login_params[:dob])
      if @user && @user.authenticate(params[:password])
        # byebug
        token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end
   
    private
   
    def user_login_params
      params.require(:user).permit(:name, :dob, :password)
      # params.require(:user).permit(:name, :hospital, :dob, :password)
    end


end
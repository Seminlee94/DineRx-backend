class Api::V1::UserOrdersController < ApplicationController

    def index
        user_orders = UserOrder.all

        # render json: user_orders, except: [:created_at, :updated_at]
        render json: UserOrderSerializer.new(user_orders).to_serialized_json
    end
    
    def show
        user_order = UserOrder.find(params[:id])
        render json: UserOrderSerializer.new(user_order).to_serialized_json
        # render json: user_order, except: [:created_at, :updated_at]
    end

    def create
        # byebug
        user_order = UserOrder.create(user_order_params)
        render json: UserOrderSerializer.new(user_order).to_serialized_json
        # render json: user_order, except: [:created_at, :updated_at]
    end
    
    def update
        user_order = UserOrder.find(params[:id])
        user_order.update(user_order_params)
        render json: UserOrderSerializer.new(user_order).to_serialized_json
        # render json: user_order, except: [:created_at, :updated_at]
    end

    def destroy
        # byebug
        user_order = UserOrder.find(params[:id])
        user_order.destroy
        render json: {}
    end
    
    private
    
    def user_order_params
        params.require(:user_orders).permit(:user_id, :order_id, :time)
    end

end

class Api::V1::OrdersController < ApplicationController

    def index
        orders = Order.all

        render json: orders, except: [:created_at, :updated_at]
    end
    
    def show
        order = Order.find(params[:id])
        render json: order, except: [:created_at, :updated_at]
    end

    def create
        order = Order.create(order_params)
        render json: order, except: [:created_at, :updated_at]
    end
    
    def update
        order = Order.find(params[:id])
        order.update(order_params)
        render json: order, except: [:created_at, :updated_at]
    end

    def delete
        order = Order.find(params[:id])

        render json: {}
    end
    
    private
    
    def order_params
        params.require(:order).permit(:user_id, :submitted, :delivered )
    end

end

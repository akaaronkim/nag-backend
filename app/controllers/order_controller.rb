class OrderController < ApplicationController
#Create a new order
    def create
        #fetch the user
        user = User.find_by(name:params[:username])
        #fetch the payment info
        # payment_info = PaymentInfo.find_by(first_name:)
        #Create a new order
        #Check for token
        # byebug
        order = Order.new(delivery_address: params[:delivery_address],pickup_address: params[:pickup_address], order_date: params[:order_date] , order_time: params[:order_time] , delivery_date: params[:delivery_date] , delivery_time: params[:delivery_time] , fee: params[:fee] , status: params[:status] , user_id: params[:user_id], payment_info_id: params[:payment_info_id])
        # byebug
        if order.save
            render json: {id: order.id}
        else
            render json: {error: 'Contact support team for further details'}, status: 401
        end
    end

#Show all the orders placed so far
    def index
        #Check for token
        all_orders = Order.all
    end

#Show specific order
    def show
        # order = Order.find_by()
    end
end

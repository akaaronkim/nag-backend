class OrderController < ApplicationController
#Create a new order
    def create
        #fetch the user
        user = User.find_by(name:params[:username])
        #fetch the payment info
        payment_info = PaymentInfo.find_by(first_name:)
        #Create a new order
        #Check for token
        order = Order.new(delivery_address: ,pickup_address: , order_date: , order_time: , delivery_date: , delivery_time: , fee: , status: , user_id: user.id, payment_info_id: payment_info.id)
        if order.save
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

class UserController < ApplicationController
#Authenticate the user
    def check
        user = User.find_by(name:params[:username])
        if user && user.authenticate(params[:password])
            my_token = issue_token(user)
            render json: {id: user.id, username: user.name, token: my_token}
        else
            render json: {error: 'The user could not be found'}, status: 401
        end
    end

#Create a new user
    def create
        user = User.(name: , email: , address_one: , address_two: , city: , state: , zipcode: , password: )
        if user.save
            byebug #=> Check for params
            payment_info = PaymentInfo.create(card_grid1: , card_grid2: , card_grid3: , card_grid4: , first_name: , last_name: , expiration_date: , cvv: , card_type: , user:user  )
            #call for check
            render json: {id: user.id, username: user.name, token: my_token}
        else
            render json: {error: 'The user could not be created'}, status: 401
        end
    end

#Lists the orders made by the user
    def show
        #Check for token
        user = User.find_by(name:params[:username])
        user_orders = Order.all.select{|order| order.user_id === user.id}
        render json: {user_orders:user_orders}
    end
end

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
        user = User.new()
        if user.save
            byebug #=> Check for params
            #call for check
            render json: {id: user.id, username: user.name, token: my_token}
        else
            render json: {error: 'The user could not be created'}, status: 401
        end
    end
end

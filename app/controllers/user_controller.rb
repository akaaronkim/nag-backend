class UserController < ApplicationController
    def create
        user = User.find_by(username:params[:username])
        if user && user.authenticate(params[:password])
            my_token = issue_token(user)
            render json: {id: user.id, username: user.username, token: my_token}
          else
            render json: {error: 'The user could not be found'}, status: 401
          end
        end
    end
end

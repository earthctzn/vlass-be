class Api::V1::UsersController < ApplicationController

    def create
        byebug
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: user, only: [:username], status: :ok
        else
            render json: {errors: user.errors.full_messages}
        end
    end
    

    private
    def user_params
        params.require(:user).permit(
            :username,  
            :password,
            :password_confirmation
        )
    end
    
end

class Api::V1::SessionsController < ApplicationController

    def create
        user = User.find_by(email: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            render json: user, only: [:id, :username], include: [:reviews], status: :ok
        else
            render json: {errors: ["Unable to log in. Please try again."] }
        end
    end

    def set_token
        auth_token = form_authenticity_token
        render json: {csrf_auth_token: auth_token}
    end


    def destroy
        session.clear
    end


    
end
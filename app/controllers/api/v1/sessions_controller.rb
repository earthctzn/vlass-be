class Api::V1::SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            render json: user, only: [:username], status: :ok
        else
            render json: {errors: ["Unable to log in. Please try again."] }
        end
    end

    def set_token
        auth_token = form_authenticity_token
        render json: {csrf_auth_token: auth_token}
    end

    def get_user
        user = User.find_by(id: session[:user_id])
        if user
            render json: user, only: [:username], status: :ok
        end
    end


    def destroy
        session.clear
    end


    
end
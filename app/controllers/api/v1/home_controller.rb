class API::V1::HomeController < ApplicationController

    def create
        home = Home.new(
            content: home_params[:content], 
        )
        if home.save
            render json: home, only: [:content], status: 200
        else
            render json: {error: "Error Creating home"}
        end
    end

    def show
        home = Home.first
        render json: home, only: [:content], status: 200
    end
    
end

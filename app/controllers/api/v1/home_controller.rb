class Api::V1::HomeController < ApplicationController

    def index
        home = Home.first
        render json: home, only: [:id, :title, :content], status: 200
    end

    def create
        home = Home.new( content: home_params[:content] )
        if home.save
            render json: home, only: [:id, :title, :content], status: 200
        else
            render json: {error: "Error Creating home"}
        end
    end

    def update
        if logged_in?
          home = Home.find(params[:id])        
          if home.update(home_params)
            render json: home, only: [:id, :title, :content], status: 200
          else
            render json: {error: "Error Updating home"}
          end
    
        else
         home = Home.find(params[:id])
        end
    end

    # def show
    #     home = Home.find_by(id: params[:id])
    #     if home
    #         render json: home, only: [:id, :title, :content], status: 200
    #     else
    #         render json: {error: "Unable to find this data."}
    #     end
    # end

    private

    def home_params
        params.require(:home).permit(:id, :title, :content )
    end
    
end

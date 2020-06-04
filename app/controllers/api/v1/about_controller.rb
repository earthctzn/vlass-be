class Api::V1::AboutController < ApplicationController

    def index
        about = About.first
        render json: about, only: [:id, :title, :content], status: 200
    end
    
    def create
        about = About.new(about_params)
        if about.save
            render json: about, only: [:id, :title, :content], status: 200
        else
            render json: {error: "Error Creating About"}
        end
    end

    def update
        if logged_in? 
          about = About.find(params[:id])  
          if about.update(about_params)
            render json: about, only: [:id, :title, :content], status: 200
          else
            render json: {error: "Error Updating about"}
          end
    
        else
         about = About.find(params[:id])
        end
    end

    # def show
    #     about = About.find_by(id: params[:id])
    #     if about
    #         render json: about, only: [:id, :title, :content], status: 200
    #     else
    #         render json: {error: "Unable to find this data."}
    #     end
    # end

    private
        def about_params
            params.require(:about).permit(:id, :title, :content)
        end

end

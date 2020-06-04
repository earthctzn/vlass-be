class Api::V1::WorkController < ApplicationController

    def index
        work = Work.all
        render json: work, only: [:id, :title, :company, :job], status: 200
    end

    def create
        work = Work.new(work_params)
        if work.save
            render json: work, only: [:id, :title, :company, :job], status: 200
        else
            render json: {error: "Error Creating Work"}
        end
    end

    def update
        if logged_in?
          work = Work.find(params[:id])        
          if work.update(work_params)
            render json: work, only: [:id, :title, :company, :job], status: 200
          else
            render json: {error: "Error Updating Work"}
          end
    
        else
         work = Work.find(params[:id])
        end
    end

    def delete
        work = Work.find_by(id: params[:id])
        work.destroy
    end

    private

    def work_params
        params.require(:work).permit(:id, :title, :company, :job )
    end
    

end

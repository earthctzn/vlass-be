class API::V1::WorkController < ApplicationController

    def create
        work = Work.new(work_params)
        if work.save
            render json: work, only: [:id, :title, :company, :job], status: 200
        else
            render json: {error: "Error Creating Work"}
        end
    end

    def update
        if params[:user_id] 
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

    def show
        work = Work.first
        render json: work, only: [:id, :title, :company, :job], status: 200
    end

    private

    def work_params
        params.require(:work).permit( :title, :company, :job )
    end
    

end

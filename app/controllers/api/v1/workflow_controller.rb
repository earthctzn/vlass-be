class Api::V1::WorkflowController < ApplicationController

    def index
        workflow = Workflow.all
        render json: workflow, only: [:id, :title, :content], status: 200
    end
    def create
        workflow = Workflow.new(workflow_params)
        if workflow.save
            render json: workflow, only: [:id, :title, :content], status: 200
        else
            render json: {error: "Error Creating workflow"}
        end
    end

    def update
        if params[:user_id] 
          workflow = workflow.find(params[:id])        
          if workflow.update(workflow_params)
            render json: workflow, only: [:id, :title, :content], status: 200
          else
            render json: {error: "Error Updating workflow"}
          end
    
        else
         workflow = workflow.find(params[:id])
        end
    end

    # def show
    #     workflow = workflow.first
    #     render json: workflow, only: [:id, :title, :content], status: 200
    # end

    private

        def workflow_params
            params.require(:workflow).permit(:id, :title, :content )
        end
end

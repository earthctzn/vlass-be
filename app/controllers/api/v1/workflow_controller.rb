class Api::V1::WorkflowController < ApplicationController

    def index
        workflow = Workflow.first
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
        if logged_in?
          workflow = Workflow.find(params[:id])        
          if workflow.update(workflow_params)
            render json: workflow, only: [:id, :title, :content], status: 200
          else
            render json: {error: "Error Updating workflow"}
          end
    
        else
         workflow = Workflow.find(params[:id])
        end
    end

    private

        def workflow_params
            params.require(:workflow).permit(:id, :title, :content )
        end
end

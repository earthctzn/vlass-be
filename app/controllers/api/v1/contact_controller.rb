class Api::V1::ContactController < ApplicationController

    def index
        contact = Contact.all
        render json: contact, only: [:id, :title, :content], status: 200
    end
    
    def create
        contact = Contact.new(contact_params)
        if contact.save
            render json: contact, only: [:id, :title, :content], status: 200
        else
            render json: {error: "Error Creating contact"}
        end
    end

    def update
        if params[:user_id] 
          contact = Contact.find(params[:id])        
          if contact.update(contact_params)
            render json: contact, only: [:id, :title, :content], status: 200
          else
            render json: {error: "Error Updating contact"}
          end
    
        else
         contact = Contact.find(params[:id])
        end
    end

    # def show
    #     contact = Contact.find_by(id: params[:id])
    #     if contact
    #         render json: contact, only: [:id, :title, :content], status: 200
    #     else
    #         render json: {error: "Unable to find this data."}
    #     end
    # end

    private

        def contact_params
            params.require(:contact).permit(:id, :title, :content )
        end

end

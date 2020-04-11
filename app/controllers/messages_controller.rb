class MessagesController < ApplicationController

    def index
        messages = Message.all 
        render json: messages
    end

    def show
        message = Message.find_by(id: params[:id])
        if message
            render json: message
        else
            render json: { error: 'Message not found.' }, status: 404
        end
    end

    def create
        message = Message.new(message_params)
        if message.valid?
            message.save 
            render json: message 
        else 
            render json: { error: "Validation failed: Please enter a message"}
        end
    end

    private

    # will we add a title to the message like email format or like chat format? 
    # can we send attachments? 

    def message_params
        params.permit(:content)
    end
    
end

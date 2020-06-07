module Api
    module V1
        class MessagesController < ApplicationController
            before_action :authenticate_user!
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
                params.require(:message).permit(:content, :user_id, :task_id)
            end

        end
    end
end

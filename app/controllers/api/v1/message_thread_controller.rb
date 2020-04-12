module Api
  module V1
    class MessageThreadController < ApplicationController
      def show
        task_id = params[:id]
        messages = Message.where(task_id: task_id)
        if !messages.empty?
          render json: messages
        else
          render json: { error: 'Messages not found.' }, status: 404
        end
      end
    end
  end
end

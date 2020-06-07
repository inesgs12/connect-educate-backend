module Api
  module V1
    class MessageThreadsForParentController < ApplicationController
      before_action :authenticate_user!
      def show
        user_id = params[:id]
        tasks = Task.where(parent_id: user_id)
        messages = tasks.map do |t|
          messages_for_task = Message.where(task_id: t.id)
          messages_for_task.last if !messages_for_task.empty?
        end
        messages = messages.compact
        if !messages.empty?
          render json: messages
        else
          render json: { error: 'Messages not found.' }, status: 404
        end
      end
    end
  end
end

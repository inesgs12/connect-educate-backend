module Api
  module V1
    class UnassignVolunteerController < ApplicationController
      # before_action :authenticate_user!
      def update
        params.require(:id)
        params.require(:volunteer)
        task_id = params[:id]
        volunteer_id = params[:volunteer]
        task = Task.where(id: task_id).where(volunteer_id: volunteer_id)
        if !task.empty?
          task.update(volunteer_id: nil)
        else
          render json: { error: 'Task not found.' }, status: 404
        end
      end
    end
  end
end

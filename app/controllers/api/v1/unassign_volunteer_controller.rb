module Api
  module V1
    class UnAssignVolunteerController < ApplicationController
      def update
        task_id = params[:id]
        volunteer_id = params[:volunteer]
        task = Task.where(id: task_id).where(volunteer_id: volunteer_id)
        if !task.empty
          task.update(volunteer_id: volunteer_id)
        else
          render json: { error: 'Task not found.' }, status: 404
        end
      end
    end
  end
end

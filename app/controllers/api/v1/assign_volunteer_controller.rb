module Api
  module V1
    class AssignVolunteerController < ApplicationController
      def update
        params.require(:id)
        params.require(:volunteer)
        task_id = params[:id]
        volunteer_id = params[:volunteer]
        task = Task.find_by(id: task_id)
        if task
          task.update(volunteer_id: volunteer_id)
        else
          render json: { error: 'Task not found.' }, status: 404
        end
      end
    end
  end
end

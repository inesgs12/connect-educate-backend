# frozen_string_literal: true

module Api
  module V1
    class TasksController < ApplicationController
      def index
        tasks = Task.all
        render json: tasks
      end

      def show
        task = Task.find_by(id: params[:id])
        if task
          render json: task
        else
          render json: {
            error: 'Task not found'
          }, status: 404
        end
      end

      def create_parent_and_task
        parent = Parent.new(parent_params)

        if parent.valid?
          parent.save
          create_task(parent, task_params)
        elsif Parent.find_by_email(parent_params['email'])
            render json: {
                error: "User with this email already exists"
            }
        else
            render json: {
                error: "Parent not able to be created, please input all required fields"
            }
        end
      end

      private

      def create_task(parent, task_params)
        task = parent.tasks.create!(task_params)
        if task.valid?
            task.save
            render json: task
        else
            render json: {
                error: "Please fill out all required fields"
            }
        end
      end

      def parent_params
        params.require(:parent).permit(:first_name, :email, :password, :preferred_language, :english_proficiency)
      end

      def task_params
        params.require(:task).permit(:content, :skill, :childs_age, :task_language)
      end
    end
  end
end

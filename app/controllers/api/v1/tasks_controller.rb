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

            def create
                task = Task.new(params[:task])
                
                if task.valid?
                    task.save
                    render json: task
                else
                    render json: {
                        error: "Please fill out all required fields"
                    }
                end

                user = User.new(params[:user])

                if user.valid?
                    user.save
                    render json: user
                else
                    render json: {
                        error: "User not saved"
                    }
                end
            end

            private

            # def task_params
            #     # params.require(:content, :parent_id, :skill_id).permit(:volunteer_id, :task_language, :childs_age)
            #     params.require(:task)
            # end

        end
    end
end

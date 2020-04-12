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

            def create_parent
                parent = Parent.new(parent_params)

                if parent.valid?
                    parent.save
                    create_task(parent, task_params)
                    render json: parent
                else
                    render json: {
                        error: "Parent not saved"
                    }
                end
            end

            def create_task(parent, task_params)
                # task = Task.new(parent_id: params[parent.id], content: params[task_params.content])
                
                task = parent.tasks.create!(task_params)
                # if task.valid?
                #     task.save
                #     render json: task
                # else
                #     render json: {
                #         error: "Please fill out all required fields"
                #     }
                # end

            end

            private

            def task_params
                # params.require(:content, :parent_id, :skill_id).permit(:volunteer_id, :task_language, :childs_age)
                params.require(task:%i[
                    :content,
                    :skill_id
                ]).permit(task:%i[
                    :childs_age,
                    task_language,
                ])
            end

            def parent_params
                params.require(parent:%i[
                    :first_name,
                    :last_name,
                    :email,
                    :password,
                ]).permit(parent:%i[
                    :bio,
                    :birth_date,
                    :english_proficiency,
                    :preferred_language
                ])
            end

        end
    end
end

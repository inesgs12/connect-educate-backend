module Api
    module V1  
        class PostsSkillsController < ApplicationController
            before_action :find_post, only: [:create, :destroy]
            before_action :find_skill, only: [:create, :destroy]

            def index
                posts_skills = PostsSkill.all
                render json: posts_skills
            end

            def show
                post_skill = PostsSkill.find_by(id: params[:id])
                if post_skill 
                    render json: post_skill 
                else 
                    render json: {
                        error: 'PostsSkill not found'
                    }, status: 404
                end
            end

            def create
                post_skill = PostsSkill.create(posts_skills_params)
                render json: post_skill
            end
        
            def destroy 
                post_skill = PostSkill.find_by(post_id: params[:post_id], skill_id: params[:skill_id])
                post_skill.destroy 
                render json: { message: "skill removed from post"}
            end

            private

            def posts_skills_params
                params.require(:post_skill).permit(:post_id, :skill_id)
            end

            def find_post 
                post = Post.find_by(id: params[:id])
            end

            def find_skill 
                skill = Skill.find_by(id: params[:id])
            end

        end
    end
end

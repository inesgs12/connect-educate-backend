module Api
    module V1  
        class PostsLanguagesController < ApplicationController

            before_action :find_post, only: [:create, :destroy]
            before_action :find_language, only: [:create, :destroy]

            def index
                posts_languages = PostsLanguage.all
                render json: posts_languages
            end

            def show
                posts_language = PostsLanguage.find_by(id: params[:id])
                if posts_language 
                    render json: posts_language 
                else 
                    render json: {
                        error: 'PostsLanguage not found'
                    }, status: 404
                end
            end

            def create
                posts_language = PostsLanguage.create(posts_language_params)
                render json: posts_language
            end
        
            def destroy 
                posts_language = PostSkill.find_by(post_id: params[:post_id], skill_id: params[:skill_id])
                posts_language.destroy 
                render json: { message: "language removed from post"}
            end

            private

            def posts_language_params
                params.require(:post_language).permit(:post_id, :language_id)
            end

            def find_post 
                post = Post.find_by(id: params[:id])
            end

            def find_language 
                language = Language.find_by(id: params[:id])
            end

        end
    end
end


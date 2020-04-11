module Api
    module V1
        class PostsController < ApplicationController

            def index
                posts = Post.all
                render json: posts
            end

            def show
                post = Post.find_by(id: params[:id])
                if post
                    render json: post
                else
                    render json: {
                        error: 'Post not found'
                    }, status: 404
                end
            end

            def create
                post = Post.new(post_params)
                if post.valid?
                    post.save
                    render json: post
                else
                    render json: {
                        error: "Please add the title and content of the post"
                    }
                end
            end

            private

            def post_params
                params.require(:title, :content).permit(:user_id)
            end

        end
    end
end

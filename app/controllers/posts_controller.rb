class PostsController < ApplicationController
    
# before_action :set_user, only: [:show, :update, :destroy, :posts_index]

    def index
        post=Post.all
        render json:post
        end
        
        
        def show
        post=Post.find(params[:id])
        if post.save
            render json: post
        else
            render json: {error: "unable to show"}
        end
        end
        
        
        
        def create
            post=Post.create(post_params)
            if post.save
                render json: post
            else
                render json: {error: "unable to create"}
            end
        end
        
        
        def update
            post = Post.find(params[:id])
            if post.update(post_params)
            render json: post
            else
                render json: {error: "unable to update"}
            end
           end
        
        
           def destroy
            post = Post.find(params[:id])
            if post.destroy
            render json: post
            else
                render json: {error: "unable to destroy"}
            end
           end
        
        
        def posts_index
            user = User.find(params[:user_id])
            posts = user.posts
            render json: posts
        end
        
        
        def post_params
            params.require(:post).permit(:name, :email)
        end
        end

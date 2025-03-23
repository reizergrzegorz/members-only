class PostsController < ApplicationController

    before_action :authenticate_user!, except: :index

    def index
        @posts = Post.all
    end

    def new 
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user = current_user

        if @post.save
            redirect_to posts_path
        else 
            render :new, status: :unprocessable_entity
        end
    end

end

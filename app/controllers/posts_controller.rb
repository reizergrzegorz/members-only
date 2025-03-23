class PostsController < ApplicationController

    before_action :authenticate_user!, except: :index

    def new 
        @post = Post.new
    end

end

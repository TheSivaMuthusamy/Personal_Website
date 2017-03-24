class PostsController < ApplicationController
    before_action :set_post, only: [:edit, :update, :show, :destroy]

    def index
        @posts = Post.all
    end

    def show
    end
    
 
    def new
        @post = Post.new
    end

    def create
        if @post = Post.create(post_params)
            flash[:success] = "Successfully created post!"
            redirect_to post_path(@post)
        else
            flash[:notice] = "An error was found. Please check form."
            render :new
        end
    end
    
    def edit
    end

    def update
        if @post.update(post_params)
            flash[:success] = "Successfully updated post!"
            redirect_to post_path(@post)
        else
            flash[:notice] = "An error was found. Please check form."
            render :edit
        end
    end

    def destroy
        @post.destroy
        flash[:success] = 'Your post has been deleted.'
        redirect_to posts_path
    end

    private

        def post_params
            params.require(:post).permit(:title, :body)
        end

        def set_post
            @post = Post.find(params[:id])
        end

end

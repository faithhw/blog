class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  authorize_resource

  def index
    @posts = Post.page(params[:page])
  end

  def show
    @comment = Comment.new(post: @post)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Update success"
      redirect_to @post
    else
      flash.now[:alert] = "Update fail"
      render :edit
    end
  end

  def destroy
    @post.destroy

    if @post.destroyed?
      flash[:notice] = "Delete success"
    else
      flash[:alert] = "Delete fail"
    end

    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end

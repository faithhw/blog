class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to post_path(id: comment_params[:post_id])
    else
      @post = Post.find(comment_params[:post_id])
      render 'posts/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :content)
  end
end

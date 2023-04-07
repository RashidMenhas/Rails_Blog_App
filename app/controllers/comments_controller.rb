class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    @comment.post = Post.find(params[:id])
    return unless @comment.save

    redirect_to user_post_path(@user.id, @post.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end

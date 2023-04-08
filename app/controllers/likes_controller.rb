class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.new(author: current_user, post: Post.find(params[:post_id]))
    return unless @like.save
    @user = User.find(current_user.id)
    redirect_to user_post_path(@user.id, params[:post_id])
  end
end

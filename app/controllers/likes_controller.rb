class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.new(author: current_user, post: Post.find(params[:id]))
    return unless @like.save

    redirect_to user_post_path(@user.id, @post.id)
  end
end

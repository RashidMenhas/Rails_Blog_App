class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all.order(:id)
  end

  def show
    @user = User.find(params[:id])
  end
end

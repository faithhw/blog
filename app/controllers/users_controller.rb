class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  authorize_resource

  def show
    @data = {
      posts: @user.posts.page(params[:page]),
      user: @user
    }
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  authorize_resource

  def show
    @data = {
      posts: @user.posts.page(params[:page]),
      user: @user
    }
  end

  def edit

  end

  def update
    if @user.update(user_params)
      flash[:notice] = 'Update successfully'
      redirect_to user_path(@user)
    else
      flash[:error] = 'Update failed'
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:avatar)
  end
end

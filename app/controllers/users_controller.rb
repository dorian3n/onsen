class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @hot_springs = @user.hot_springs.page(params[:page]).reverse_order  # ここを記述
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :nickname, :image, :address, :age, :sex, :email)
  end
  
end

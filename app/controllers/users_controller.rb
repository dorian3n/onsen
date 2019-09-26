class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @hot_springs = @user.hot_springs.page(params[:page]).reverse_order  # ここを記述
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :nickname, :image, :address, :age, :sex, :email)
  end
  
end

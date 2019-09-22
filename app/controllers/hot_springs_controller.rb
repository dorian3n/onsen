class HotSpringsController < ApplicationController
  def new
    @hot_spring = HotSpring.new
  end

  def create
    @hot_spring = HotSpring.new(hot_spring_params)
    @hot_spring.user_id = current_user.id
    @hot_spring.save
    redirect_to hot_springs_path
  end

  def show
    @hot_spring = HotSpring.find(params[:id])
  end

  def index
    @hot_springs = HotSpring.all
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private
  def hot_spring_params
    params.require(:hot_spring).permit(:prefecture_id, :name, :address, :start_time, :ending_time, :type, :price, :rate, :image, :remarks, :review)
  end
end


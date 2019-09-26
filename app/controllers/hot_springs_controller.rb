class HotSpringsController < ApplicationController
  def new
    @hot_spring = HotSpring.new
  end

  def create
    @hot_spring = HotSpring.new(hot_spring_params)
    @hot_spring.user_id = current_user.id
    @hot_spring.save
    # binding.pry
    redirect_to hot_springs_path
  end

  def show
    @hot_spring = HotSpring.find(params[:id])
    @comment = Comment.new
  end

  def index
    @hot_springs = HotSpring.all
  end

  def edit
    @hot_spring = HotSpring.find(params[:id])
  end

  def update
    @hot_spring = HotSpring.find(params[:id])
    @hot_spring.update(hot_spring_params)
    redirect_to hot_spring_path(@hot_spring.id)
  end

  def destroy
    @hot_spring = HotSpring.find(params[:id])
    @hot_spring.destroy
    redirect_to root_path
  end

  private
  def hot_spring_params
    params.require(:hot_spring).permit(:prefecture_id, :name, :address, :hot_spring_status, :rate, :image, :remarks, :review, :adult_price, :child_price, :start_time, :ending_time)
  end
end


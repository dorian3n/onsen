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
  end

  def destroy
  end

  def update
  end

  private
  def hot_spring_params
    params.require(:hot_spring).permit(:prefecture_id, :name, :address, :hot_spring_status, :rate, :image, :remarks, :review, :adult_price, :child_price, :start_time, :ending_time)
  end
end


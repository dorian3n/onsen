class HotSpringsController < ApplicationController
  def new
    @hot_spring = HotSpring.new
  end

  def create
    @hot_spring = HotSpring.new(hot_spring_params)
    @hot_spring.user_id = current_user.id
    @hot_spring.total_rate = @hot_spring.rate
    @hot_spring.save
    redirect_to hot_springs_path
  end

  def show
    @hot_spring = HotSpring.find(params[:id])
    @comment = Comment.new
    if @hot_spring.comments.any?
      @user_rates = @hot_spring.comments.average(:rate).round(1)
    else
      @user_rates = 0
      @hot_spring.total_rate=@hot_spring.rate
    end
    #   sum=0
    #   @hot_spring.comments.each do |comment|
    #     sum+=comment.rate
    #   end
    #   @users_rate=sum/(@hot_spring.comments.count).to_f
    #   @hot_spring.total_rate=((@users_rate+@hot_spring.rate)/2).to_f
    # else
    #   @users_rate = 0
    #   @hot_spring.total_rate=@hot_spring.rate
    # end
   
  end

  def index
    @hot_springs = HotSpring.all.order(created_at: :desc)
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


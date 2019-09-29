class CommentsController < ApplicationController
  def create
    @hot_spring = HotSpring.find(params[:hot_spring_id])
    @comment = current_user.comments.new(comment_params)
    @comment.hot_spring_id = @hot_spring.id
    
    if @comment.user.nickname.nil?
      redirect_to user_path(current_user)

    else
      if @comment.save
        @user_rates = @hot_spring.comments.average(:rate).round(1)
        @hot_spring.total_rate = ((@user_rates+@hot_spring.rate)/2.0).to_f
        @hot_spring.save
      else
        #error msg
        flash[:notice] = "コメントは１つの温泉につき１回までしかできません。"
      end
      redirect_to hot_spring_path(@hot_spring)
    end
  end

  def destroy
  end

  def update
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :hot_spring_id, :rate, :comment)
  end
end

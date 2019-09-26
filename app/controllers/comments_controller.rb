class CommentsController < ApplicationController
  def create
    @hot_spring = HotSpring.find(params[:hot_spring_id])
    comment = current_user.comments.new(comment_params)
    comment.hot_spring_id = @hot_spring.id
    comment.save
    redirect_to hot_spring_path(@hot_spring)
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

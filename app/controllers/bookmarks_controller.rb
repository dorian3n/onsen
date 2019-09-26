class BookmarksController < ApplicationController


  def index
    @bookmarks = current_user.bookmarks.page(params[:page]).per(5)
  end

  def create
    hot_spring = HotSpring.find(params[:hot_spring_id])
    bookmark = current_user.bookmarks.new(hot_spring_id:hot_spring.id)
    bookmark.save
    redirect_to hot_spring_path(hot_spring)
  end

  def destroy
    hot_spring = HotSpring.find(params[:hot_spring_id])
    bookmark = current_user.bookmarks.find_by(hot_spring_id:hot_spring.id)
    bookmark.destroy
    redirect_to hot_spring_path(hot_spring)
  end
end

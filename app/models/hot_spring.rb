class HotSpring < ApplicationRecord

  belongs_to :user
  belongs_to :prefecture
  has_many :bookmarks
  has_many :comments
  
  attachment :image

  # いいね機能
  def favorited_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end
 
end

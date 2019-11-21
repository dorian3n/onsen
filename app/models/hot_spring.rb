class HotSpring < ApplicationRecord


  belongs_to :user
  belongs_to :prefecture
  
  has_many :bookmarks
  has_many :comments
  
  attachment :image

  # validates :user_id, presence: true
  # validates :prefecture_id, presence: true
  # validates :name, presence: true
  # validates :address, presence: true
  # validates :hot_spring_status, presence: true
  # validates :rate, presence: true
  # validates :image_id, presence: true
  # validates :remarks, presence: true
  # validates :review, presence: true
  # validates :adult_price, presence: true
  # validates :child_price, presence: true
  # validates :start_time, presence: true
  # validates :ending_time, presence: true

  # 評価
  # enum rate:{
  #   "1":1, "2":2, "3":3, "4":4, "5":5
  # }

  # いいね機能
  
    def favorited_by?(user)
      bookmarks.where(user_id: user.id).exists?
    end
  
end

class HotSpring < ApplicationRecord


  belongs_to :user
  belongs_to :prefecture
  
  has_many :bookmarks
  has_many :comments
  
  attachment :image


  # 温泉名
  validates :name, presence: true, length: { in: 2..12}
  # 住所
  validates :address, presence: true, length: { in: 2..40}
  # 大人の値段
  validates :adult_price, presence: true, length: { in: 1..7}
  # 温泉の種類
  validates :hot_spring_status, presence: true





  # 評価
  # enum rate:{
  #   "1":1, "2":2, "3":3, "4":4, "5":5
  # }

  # いいね機能
  
    def favorited_by?(user)
      bookmarks.where(user_id: user.id).exists?
    end
  
end

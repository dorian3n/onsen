class HotSpring < ApplicationRecord

  belongs_to :user
  belongs_to :prefecture
  has_many :bookmarks
  has_many :comments



end

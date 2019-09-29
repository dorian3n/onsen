class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :hot_spring


  validates_uniqueness_of :user, scope: :hot_spring
  validates :rate, presence: true
  validates :comment, presence: true
end

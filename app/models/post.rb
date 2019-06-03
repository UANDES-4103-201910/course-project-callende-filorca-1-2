class Post < ApplicationRecord
  belongs_to :user
  has_many :comment
  has_many_attached :image
  has_many :likes, dependent: :destroy
end

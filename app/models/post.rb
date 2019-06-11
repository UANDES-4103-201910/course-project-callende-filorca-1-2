class Post < ApplicationRecord
  belongs_to :user
  has_many :comment
  has_many_attached :image
  has_many :likes, dependent: :destroy
  has_many :downvotes, dependent: :destroy
  has_many :inappropriates, dependent: :destroy
  has_one_attached :image

  def self.search(search)
    if search
      where(["title LIKE ?","%#{search}%"])
    else
      all
    end
  end
end

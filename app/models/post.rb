class Post < ApplicationRecord
  belongs_to :wall, optional: true
  belongs_to :user, optional: true
  belongs_to :admin, optional: true
  belongs_to :super_admin, optional: true
	has_many :comments
  has_one_attached :image
	has_many :likes
  #has_one_attached :image
	#validates :title, :presence => true
	#validates :description, length: {in: 20..10000}

end

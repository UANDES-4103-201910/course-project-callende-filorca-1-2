class Post < ApplicationRecord
  belongs_to :wall
  belongs_to :user
  belongs_to :admin
  belongs_to :super_admin
	has_many :comments
	has_many :likes
	validates :title, :presence => true 
	validates :description, length: {in: 20..10000} 
end

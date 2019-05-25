class Admin < ApplicationRecord
  belongs_to :admin_profile
  belongs_to :super_admin
	has_many :users
	has_many :posts
	
end

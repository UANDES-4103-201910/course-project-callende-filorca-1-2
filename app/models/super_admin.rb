class SuperAdmin < ApplicationRecord
  belongs_to :admin_profile
	has_many :admins
	has_many :users
	has_many :posts

end

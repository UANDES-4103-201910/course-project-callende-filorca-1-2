class User < ApplicationRecord
  belongs_to :blacklist, optional: true
  belongs_to :admin, optional: true
  belongs_to :super_admin, optional: true
	has_many :posts
	has_many :comments
	has_one :wall
	has_many :likes
	has_one_attached :image

  devise :omniauthable, :omniauth_providers => [:google_oauth2]

  def self.from_omniauth(access_token)
  data = access_token.info
  user = User.where(email: data['email']).first
  unless user
      user = User.create(name: data['name'],
          email: data['email'],
          password: Devise.friendly_token[0,20]
      )
  end
  user
end
#def self.from_omniauth(auth)
  # Either create a User record or update it based on the provider (Google) and the UID
#  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
#    user.token = auth.credentials.token
#    user.expires = auth.credentials.expires
#    user.expires_at = auth.credentials.expires_at
#    user.refresh_token = auth.credentials.refresh_token
#  end
#end
#validates :picture, :presence => true
#	validates :password, length: {in: 8..12}
#	validates :password, format: {with: /\A[a-zA-Z0-9]*\z/ }
#	validates :name, length: {in: 2..20}
#	validates :lastname, length: {in: 2..20}
#	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

	end

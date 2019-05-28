Rails.application.routes.draw do
  resources :likes
  get 'top/top'
  get 'sign/sign'
  get 'index/home_page'
	 root to: 'index#home_page'
  resources :comments
  resources :posts
  resources :walls
  resources :users
  resources :sign
  resources :top
  resources :admins
  resources :super_admins
  resources :blacklists
  resources :admin_profiles

	post '/users/new' => "users#create"
	put '/users/:id' => "users#update"
	delete '/users/:id' => "users#destroy"
	get '/users/:id' => "users#show"

  post '/login', to: 'sessions#create', as: :log_in

  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    post 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session_page
    post 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

	post '/posts/new' => "posts#create"
	put '/posts/:id' => "posts#update"
	delete '/posts/:id' => "posts#destroy"
	get '/posts/:id' => "posts#show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

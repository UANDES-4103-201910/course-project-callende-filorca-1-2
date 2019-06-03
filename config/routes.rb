Rails.application.routes.draw do
  get 'top/index'
  get 'users/index'
  root "posts#index"
  resources :comments
  resources :posts
  resources :blacklists
  resources :top
  match '/users',   to: 'users#index',   via: 'get'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :posts do
    resources :likes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

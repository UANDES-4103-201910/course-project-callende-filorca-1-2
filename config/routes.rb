Rails.application.routes.draw do
  get 'top/index'
  get 'users/index'

  root "posts#index"
  resources :comments
  resources :walls
  resources :posts
  resources :blacklists
  resources :top
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/show/:id',   to: 'users#show',   via: 'get'
  match '/users/edit/:id',   to: 'users#edit',   via: 'get'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :posts do
    resources :likes
  end
  resources :posts do
    resources :downvotes
  end
  resources :posts do
    resources :inappropriates
  end


  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

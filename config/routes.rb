Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]

  resources :posts

  resources :comments, only: [:create]

  root to: 'posts#index'
end

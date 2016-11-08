Rails.application.routes.draw do
  resources :posts

  resources :comments, only: [:create]

  root to: 'posts#index'
end

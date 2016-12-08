Rails.application.routes.draw do
  
  get 'signup' => 'users#new'
  get 'profile' => 'users#show'
  resources :users

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  resources :sessions

  get 'posts' => 'posts#index'
  resources :posts
  
  root 'users#index'

end


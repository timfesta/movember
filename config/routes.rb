Rails.application.routes.draw do
  get 'signup' => 'users#new'

  get 'profile' => 'users#show'
  
  resources :users

  root 'statics#index'

end


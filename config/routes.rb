Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'prototypes#index'
  get '/users/sign_up' => 'devise/registrations#new'
  post '/users' => 'devise/registrations#create'

  #resources :prototypes, only: [:index]
  resources :users, only: [:edit, :update]

end

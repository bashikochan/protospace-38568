Rails.application.routes.draw do
  devise_for :users

  root to: 'prototypes#index'
  get 'users/:id' => 'users#show'
  #↑URLが打ち込まれた際にusersコントローラーのshowアクションを開く。

=begin
  get '/users/sign_up' => 'devise/registrations#new'
  post '/users' => 'devise/registrations#create'
  get 'users/:id' => 'users#edit'

  post '/prototypes' => 'prototypes#create'
  get '/prototypes/:id' => 'prototypes#show'
=end
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]

end
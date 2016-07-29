Rails.application.routes.draw do

  resources :ingresses
  resources :restrictions
  resources :lenders
  resources :providers
  #devise_for :users
  resources :people
  resources :items
  resources :loans
  resources :roles
  resources :kits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'kits#index'

  mount_devise_token_auth_for 'User', at: 'auth'

end

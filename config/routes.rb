Rails.application.routes.draw do

  resources :personas
  resources :prestarios
  resources :proveedors
  resources :salidas
  resources :ingresos
  resources :prestamos
  #devise_for :users
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'kits#index'

  mount_devise_token_auth_for 'User', at: 'auth'

end

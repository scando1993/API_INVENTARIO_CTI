Rails.application.routes.draw do
  resources :items
  resources :users
  resources :loans
  resources :roles
  resources :kits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'kits#index'
end

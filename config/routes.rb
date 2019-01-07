Rails.application.routes.draw do
  resources :controllers
  resources :backgrounds
  resources :races
  resources :concepts
  resources :prowesses
  resources :notes
  resources :equipment
  resources :crossroads
  devise_for :users
	root 'welcome#index'
  	resources :characters
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

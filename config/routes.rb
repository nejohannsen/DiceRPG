Rails.application.routes.draw do
  resources :backgrounds
  resources :races
  resources :concepts
  resources :prowesses
  devise_for :users
	root 'welcome#index'
  	resources :characters
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

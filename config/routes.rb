Rails.application.routes.draw do
	
  devise_for :users
  resources :users, only: [:show]

  resources :events do
  	resources :attendances
  end

  root 'events#index'

  resource :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

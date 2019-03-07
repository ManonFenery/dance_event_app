Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: { sessions: "users/sessions" }
  devise_for :users, path: 'users', controllers: { sessions: "admins/sessions" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

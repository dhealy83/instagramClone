Rails.application.routes.draw do

# This setes up redirection after signing out.
devise_scope :user do
  get '/users', to: 'devise/registration#new'
  get '/users/password', to: 'devise/password#new'
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  devise_for :users

  get 'home/about'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end

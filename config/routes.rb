Rails.application.routes.draw do

  # Likes wont need a resource or a route.
  resources :likes, only: [:create, :destroy]
  resources :comments

# This sets up redirection after signing out.
devise_scope :user do
  get '/users', to: 'devise/registration#new'
  get '/users/password', to: 'devise/password#new'
  get '/users/sign_out' => 'devise/sessions#destroy'
end

devise_for :users, controllers: {
  registrations: 'users/registrations'
}

  resource :user, only: [:show]

  get 'home/about'
  get 'posts/myposts'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end

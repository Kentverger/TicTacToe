Rails.application.routes.draw do
  resources :algorithm, only: [:index]
  resources :turns, only: [:create, :show]
  resources :games, only: [:create, :new]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

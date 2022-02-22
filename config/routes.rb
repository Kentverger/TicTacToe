Rails.application.routes.draw do
  resources :turns, only: [:create]
  resources :players, only: [:create]
  resources :games, only: [:create, :show, :new]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

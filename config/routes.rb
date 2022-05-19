Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "movies#index"
  resources :movies, only: [:index, :show, :new] do
    resources :list, only: [:create] do
    resources :booksmarks, only: [create]
    end
  end
end

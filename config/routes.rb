Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tools, only: %i[create new edit update] do
    resources :rentals, only: %i[create new]
  end
  # should rentals be nested under users? since all rentals will be associated
  # with a user?
  resources :users, only: %i[show]



end

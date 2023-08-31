Rails.application.routes.draw do
  devise_for :users
  root to: "tools#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :tools do
    resources :rentals, only: %i[create new]
      collection do
        get 'categories/:category', to: "tools#categories", as: 'category'
      end
    resources :reviews, only: %i[index create new]
  end

  resources :users, only: %i[show]

end

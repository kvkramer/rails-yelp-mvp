Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get 'new', to: 'restaurants#new'
  # post 'new', to: 'restaurants#new'
  # get 'show', to: 'restaurants#show'

  resources :restaurants, only: [:index, :new, :create, :show] do
    # Custom routes relating to restaurants
    resources :reviews, only: [:new, :create]

    # end
  end

  # resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

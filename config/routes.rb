Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
  end

  resources :user do
    resources :reviews
  end

  resources :board_games do
    resources :reviews, only: [:index]
  end

  resources :reviews, only: [:show]

  resources :categories do
    resources :board_games, only: [:index]
    resources :publishers, only: [:index]
    resources :designers, only: [:index]
  end

  resources :artists do
    resources :board_games, only: [:index]
    resources :publishers, only: [:index]
    resources :designers, only: [:index]
    resources :reviews, only: [:index]
  end

  resources :designers do
    resources :board_games, only: [:index]
    resources :publishers, only: [:index]
    resources :artists, only: [:index]
    resources :reviews, only: [:index]
  end

  resources :publishers do
    resources :board_games, only: [:index]
    resources :artists, only: [:index]
    resources :designers, only: [:index]
    resources :reviews, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

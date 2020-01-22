Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
  end

  get 'users/sort_by_alphabet', to: 'users#index_by_alphabet'
  get 'users/sort_by_account_age', to: 'users#index_by_account_age'
  resources :users, only: [:index, :show] do
    resources :reviews, only: [:index]
  end

  resources :board_games do
    resources :reviews, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  resources :reviews, only: [:show]

  resources :categories do
    resources :board_games, only: [:index]
  end

  resources :artists do
    resources :board_games, only: [:index]
    resources :reviews, only: [:index]
  end

  resources :designers do
    resources :board_games, only: [:index]
    resources :reviews, only: [:index]
  end

  resources :publishers do
    resources :board_games, only: [:index]
    resources :reviews, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

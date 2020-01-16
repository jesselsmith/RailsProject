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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resources :labels, only: [:show]

  resources :ratings, only: [:show]

  # #1
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do

    resources :comments, only: [:create, :destroy]

  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  # Allows users to type /about rather than /welcome/about
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end

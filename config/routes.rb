Rails.application.routes.draw do

  # #1
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]

  # Allows users to type /about rather than /welcome/about
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end

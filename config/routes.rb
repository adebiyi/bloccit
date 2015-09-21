Rails.application.routes.draw do

  # #1
  resources :posts, :advertisements


  # Allows users to type /about rather than /welcome/about
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end

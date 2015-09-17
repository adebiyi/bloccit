Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  # #1
  resources :posts

  # Allows users to type /about rather than /welcome/about
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end

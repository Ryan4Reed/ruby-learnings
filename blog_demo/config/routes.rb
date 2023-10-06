Rails.application.routes.draw do
  devise_for :users
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # /posts/1/comments/4
  resources :posts do
    resources :comments
  end

  # Defines the root path route ("/")
  root "pages#home"
end

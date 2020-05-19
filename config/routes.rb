Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :index]
  get 'pages/home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

end

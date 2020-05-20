Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :index]
  get 'pages/home'
  #devise_for :users

  devise_for :users, controllers: { registrations: 'registrations' }

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

end

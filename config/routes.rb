Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'sessions/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts, :only =>[:new, :create, :index]
  root to: "posts#index"
  match '/signout', to: 'sessions#destroy',     via: 'delete'

end

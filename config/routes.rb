Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :users, except: :new
  
  resources :lists do
    resources :items
  end

  root 'lists#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

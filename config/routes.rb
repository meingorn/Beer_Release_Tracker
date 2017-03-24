Rails.application.routes.draw do
  get root 'static#index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  resources :breweries
  resources :beers
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

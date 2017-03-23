Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/field', to: 'ideas#field'
  post '/field', to: 'ideas#create'
  post '/deck_make', to: 'ideas#deck_make'
  resources :users
  resources :ideas, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'
 
  resources :games do
    resources :genres, only: [:index, :show]
  end

  resources :users
  resources :genres
 

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'
end

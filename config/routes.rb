Rails.application.routes.draw do
  get 'topics/new'
  get 'topic/new'
  get 'sessions/new'
  get 'pages/help'
  get 'pages/link'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  
   get     '/login',  to: 'sessions#new'
   post   '/login',   to: 'sessions#create'
   delete '/logout',   to: 'sessions#destroy'
   
    resources :users
    resources :topics
    
    get 'favorites/index'
    post '/favorites', to: 'favorites#create'
    
end
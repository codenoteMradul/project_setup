Rails.application.routes.draw do
  get 'home/index'
  devise_for :practice_authentications
  root to: "home#index"
  resources :practice_projects

  get  '/profile', to: 'profile#index'
  get '/profile/new', to: 'profile#new'
  post '/profile', to: 'profile#create'
  get  '/profile/:id/show', to: 'profile#show'
  get '/profile/:id/edit', to: 'profile#edit'
  patch '/profile/:id', to: 'profile#update'
  delete '/profile/:id', to: 'profile#delete' 


  get 'users_index' , to: 'users#index'



resources :man do 
  resources :dress
end

get 'details',to: "details#index"
post 'details',to: "details#create"
get 'details/:id',to: "details#show"
put 'details/:id',to: "details#update"
delete 'details/:id',to: "details#destroy"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # root 'users#index'
  resources :users
  
  namespace :api do
    get 'user_update',  to: 'users#user_update'
  end

  # get 'user_update', to: 'users#user_update'
  # get 'users_mail', to: 'users#mail'
  # get 'user_mail', to: 'users#mail'
  # Defines the root path route ("/")
  # root "posts#index"
end
  
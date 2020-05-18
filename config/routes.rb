Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :about, only: [:show, :create, :update]
      resources :contact, only: [:show, :create, :update]
      resources :home, only: [:show, :create, :update]
      resources :work, only: [:show, :create, :update]
      resources :workflow, only: [:show, :create, :update]
      
      get '/user' => 'sessions#get_user'
      get '/auth' => 'sessions#set_token'

      
      post '/login' => 'sessions#create'
      post '/signup' => 'users#create'

      delete '/logout' => 'sessions#destroy'

    end
  end

end


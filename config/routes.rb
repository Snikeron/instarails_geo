Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Added in class
  get '/profile', to: 'profiles#show'
  get '/profile/edit', to: 'profiles#edit'
  post '/profile', to: 'profiles#create'
end

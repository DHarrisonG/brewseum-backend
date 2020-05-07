Rails.application.routes.draw do
  post '/login', to: 'auth#create'

  resources :users
  resources :bars
  resources :comments
  resources :user_bars

end



Rails.application.routes.draw do
  resources :users 
  resources :bars
  resources :comments
  resources :user_bars

end

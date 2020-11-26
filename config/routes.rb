Rails.application.routes.draw do
  
  devise_for :users
  root to: "reviews#index"
  resources :tweets, only: [:new, :create]
end

Rails.application.routes.draw do
  
  devise_for :users
  root to: "reviews#index"
  resources :reviews, only: [:new, :create, :show, :destroy, :edit, :update]
end

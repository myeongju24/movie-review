Rails.application.routes.draw do
  
  devise_for :users
  root to: "reviews#index"
  resources :reviews, except: [:index] do
    resources :comments, only: :create
  end
  resources :users ,only: :show
end

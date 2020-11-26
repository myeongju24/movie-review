Rails.application.routes.draw do
  
  devise_for :users
  root to: "reviews#index"
  resources :reviews, only: [:new, :create, :show, :destroy, :edit, :update] do
    resources :comments, only: :create
  end
  resources :users ,only: :show
end

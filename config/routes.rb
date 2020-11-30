Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users  
  # resources :casts, except: [:edit, :update] do
  #   resources :comments, only: [:create]
  # end
  resources :minicasts, except: [:edit, :update] 
  resources :podcasts, only: [:show, :index] 

  namespace :casts do
    resources :comments, only: [:create], on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


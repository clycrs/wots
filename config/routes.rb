Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users #public
  resource :profile, only: [:show]  #current_user
  resources :categories, only: [:index]
  # resources :casts, except: [:edit, :update] do
  #   resources :comments, only: [:create]
  # end
  
  resources :minicasts, except: [:edit, :update]

  resources :minicasts, except: [:edit, :update, :index]

  resources :podcasts, only: [:show, :index]

  resources :casts, only: [] do
    resources :comments, only: [:create], on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/mentionslegales", to: "pages#mentionslegales"
  get "/welcome", to: "pages#welcome"
  get "/intro", to: "pages#intro"

  resources :users #public
  resource :profile, only: [:show]  #current_user
  resources :categories, only: [:index]
  # resources :casts, except: [:edit, :update] do
  #   resources :comments, only: [:create]
  # end

  resources :minicasts, except: [:edit, :update, :index]

  resources :podcasts, only: [:show, :index]

  resources :casts, only: [:index] do
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'users/profiles'
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"
  devise_scope :user do
    get '/profile', to: 'users#profile', as: :profile
    get '/update_profile', to: 'users#update_profile', as: :edit_profile
    put '/update_profile', to: 'users#update_profile', as: :update_profile
  end
  resources :programs, only: [:show, :index]
  resources :weeks, only: [:index, :show]
  resources :days, only: [:show]
  resources :users do
    resources :progresses, only: [:index, :new, :create, :destroy]
  end
  
  get 'contact', to: 'pages#contact'
  get 'tips', to: 'pages#tips'
  

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

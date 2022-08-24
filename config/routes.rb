Rails.application.routes.draw do
  root 'wines#index'
  # devise_for :users 
  resources :wine_strains
  resources :strains
  resources :wines
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

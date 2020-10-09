Rails.application.routes.draw do
  resources :food_nutritions
  resources :nutritions
  resources :food_ingredients
  resources :ingredients
  namespace :api do
    namespace :v1 do
      resources :hospital_foods
      resources :foods
      resources :users
      resources :user_allergies
      resources :allergies
      resources :orders
      resources :hospitals
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end

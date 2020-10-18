Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_orders
      resources :user_ingredients
      resources :food_nutritions
      resources :nutritions
      resources :food_ingredients
      resources :ingredients
      resources :hospital_foods
      resources :foods
      resources :users
      resources :user_allergies
      resources :user_foods
      resources :allergies
      resources :orders
      resources :hospitals
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end

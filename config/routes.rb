Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :home 
  resources :pickups
  resources :skills, controller: 'pickups'
  resources :spells, controller: 'pickups'
  resources :specials, controller: 'pickups'
  resources :effects, controller: 'pickups'
  resources :terrains, controller: 'pickups'
  
  




end

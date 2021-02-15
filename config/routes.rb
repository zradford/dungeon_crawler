Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :home 
  
  resources :creatures
  resources :monsters, controller: 'creatures', except: :index
  resources :monsters, only: :index

  resources :characters, controller: 'creatures', except: :index
  resources :characters, only: :index

  resources :pickups
  resources :skills, controller: 'pickups', except: :index
  resources :skills, only: :index

  resources :spells, controller: 'pickups', except: :index
  resources :spells, only: :index

  resources :specials, controller: 'pickups', except: :index
  resources :specials, only: :index

  resources :effects, controller: 'pickups', except: :index
  resources :effects, only: :index

  resources :terrains, controller: 'pickups', except: :index
  resources :terrains, only: :index
end

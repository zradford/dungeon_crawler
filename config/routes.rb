Rails.application.routes.draw do
  resources :creatures
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :home 
  resources :pickups
  resources :skills, controller: 'pickups', except: [:index, :update]
  resources :skills, only: [:index, :update]

  resources :spells, controller: 'pickups', except: [:index]
  resources :spells, only: [:index]

  resources :specials, controller: 'pickups', except: [:index]
  resources :specials, only: [:index]

  resources :effects, controller: 'pickups', except: [:index]
  resources :effects, only: [:index]

  resources :terrains, controller: 'pickups', except: [:index]
  resources :terrains, only: [:index]

  get "/character_manager" => 'home#character_manager'
  post "/character_manager" => 'home#character_manager'
end

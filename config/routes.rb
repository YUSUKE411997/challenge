Rails.application.routes.draw do
  get 'maps/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  get 'about' => 'homes#about', as: :about

  resources :maps, only: [:index]
  get '/map_request', to: 'maps#map', as: 'map_request'
end

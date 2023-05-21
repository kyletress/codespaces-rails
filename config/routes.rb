Rails.application.routes.draw do
  resources :stats
  resources :teams
  resources :games
  resources :athletes
  resources :sports
  root "concepts#index"
  resources :concepts
end

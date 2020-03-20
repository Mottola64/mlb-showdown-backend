Rails.application.routes.draw do
  resources :my_teams
  resources :users
  resources :pitchers
  resources :batters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

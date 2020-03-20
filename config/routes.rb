Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :pitchers
      resources :batters
      resources :my_teams
    end
  end
  
end
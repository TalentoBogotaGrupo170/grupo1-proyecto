Rails.application.routes.draw do
  resources :healthpromentities
  resources :institutions
  resources :answers
  resources :complaints
  resources :material_goals
  resources :material_types
  resources :actor_relationships
  resources :actor_attain_goals
  resources :actor_goals
  resources :actors
  resources :goal_attainments
  resources :goals
  resources :degrees
  resources :actor_types
  resources :ident_types
  resources :goals_attain_goals
  get 'bienvenido/index'
  root 'bienvenido#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

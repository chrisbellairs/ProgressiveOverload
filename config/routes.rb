Rails.application.routes.draw do
  devise_for :users
  resources :programs
  resources :program_weeks
  resources :workouts
end

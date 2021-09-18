Rails.application.routes.draw do
  devise_for :users
  resources :programs
  resources :program_weeks
  resources :workouts
  resources :rpe_exercises
  resources :percentage_one_rm_exercises
end

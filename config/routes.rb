Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :one_rep_maxs
  resources :programs do
    resources :program_weeks
  end
  resources :program_weeks
  resources :workouts
  resources :rpe_exercises
  resources :percentage_one_rm_exercises
  resources :exercise_records, only: [:create, :new, :edit, :update]
  resources :exercise_set_records, only: [:create, :new, :edit, :update]
end

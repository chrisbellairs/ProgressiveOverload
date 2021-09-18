Rails.application.routes.draw do
  devise_for :users
  resources :programs do
    resources :program_weeks
  end
end

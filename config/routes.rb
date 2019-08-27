Rails.application.routes.draw do
  devise_for :users
  root "sequences#index"

  resources :sequences
  
end

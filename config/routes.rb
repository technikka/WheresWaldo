Rails.application.routes.draw do
  root "exhibits#index"

  resources :exhibits, only: [:index, :show]
end

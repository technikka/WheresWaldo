Rails.application.routes.draw do
  root "exhibits#index"
  resources :exhibits, only: [:index, :show]

  get "/validate_location", to: "exhibits#validate_location"
  get "/get_location", to: "exhibits#get_location"
end

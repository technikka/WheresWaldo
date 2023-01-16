Rails.application.routes.draw do
  root "exhibits#index"
  resources :exhibits, only: [:index, :show]

  get "/validate_location", to: "exhibits#validate_location"
  get "/get_location", to: "exhibits#get_location"
  get "/get_high_score", to: "exhibits#get_high_score"
  put "/update_high_score", to: "exhibits#update_high_score"
end

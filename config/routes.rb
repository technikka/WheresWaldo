Rails.application.routes.draw do
  root "exhibits#index"

  get "/exhibits/:id", to: "exhibits#show"
  resources :exhibits
end

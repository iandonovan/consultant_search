Rails.application.routes.draw do
  root to: "consultants#index"
  resources :consultants, only: :index
end

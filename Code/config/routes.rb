Rails.application.routes.draw do
  resources :system
  resources :classification
  root to: "system#index"
  root to: "classification#index"
end

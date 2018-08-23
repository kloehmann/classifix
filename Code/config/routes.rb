Rails.application.routes.draw do
  resources :system
  resources :classification
  resources :technical_characteristics
  root to: "system#index"
  root to: "classification#index"
  root to: "technical_characteristics#index"
end
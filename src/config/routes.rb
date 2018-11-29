Rails.application.routes.draw do
  resources :system
  resources :classification
  resources :technical_characteristics
  resources :recommendation
  root to: "system#index"
  root to: "classification#index"
  root to: "technical_characteristics#index"
  root to: "recommendation#index"
end
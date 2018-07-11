Rails.application.routes.draw do
  resources :system
  root to: "system#index"
end

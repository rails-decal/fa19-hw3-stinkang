Rails.application.routes.draw do
  root "main#index"
  resources :cities
end

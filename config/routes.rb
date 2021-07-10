Rails.application.routes.draw do
  resources :questions
  root to: "home#index"
end

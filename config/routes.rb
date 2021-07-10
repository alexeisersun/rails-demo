Rails.application.routes.draw do
  devise_for :users
  resources :questions do
    put :upvote, :downvote, on: :member
  end
  root to: "home#index"
end

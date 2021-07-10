Rails.application.routes.draw do
  devise_for :users

  resources :questions do
    put :upvote, :downvote, on: :member
    resources :answers
  end
  root to: "home#index"
end

Rails.application.routes.draw do
  resources :questions do
    put :upvote, :downvote, on: :member
  end
  root to: "home#index"
end

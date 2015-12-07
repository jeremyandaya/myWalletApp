Rails.application.routes.draw do
  resources :users
  resources :cards
  resources :user_cards

  # get "users", to: "users#index"
end

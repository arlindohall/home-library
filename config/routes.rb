# typed: strict
Rails.application.routes.draw do
  namespace :api do
    resources :genres, only: [:index]
    resources :books, only: [:index]
  end

  root "static_pages#root"

  get "/scan/:scanned_id", to: "static_pages#scan"

  get "*path", to: "static_pages#root"
end

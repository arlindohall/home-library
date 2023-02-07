# typed: strict
Rails.application.routes.draw do
  namespace :api do
    resources :genres, only: [:index]
    resources :books, only: %i[index create]
  end

  root "static_pages#root"

  get "/scan/:scanned_id", to: "scan#show"

  get "*path", to: "static_pages#root"
end

Rails.application.routes.draw do
  namespace :api do
    resources :genres
    resources :books
  end

  root "static_pages#root"
end

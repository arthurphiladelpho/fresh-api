Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users

    resources :appointments

    resources :client_ratings

    resources :worker_ratings
  end
end

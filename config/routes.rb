Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: :create
      resource :sessions, only: %i[create show]

      resources :routines, only: :create do
        resources :meals, only: :create
      end
    end
  end
end

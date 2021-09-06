Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: :create
      resource :sessions, only: %i[create show]

      resources :routines, only: %i[index create] do
        resources :meals, only: :create
      end
      resources :meals, only: %i[index]
    end
  end
end

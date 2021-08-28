Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: :create
      resource :sessions, only: %i[create show]
    end
  end
end

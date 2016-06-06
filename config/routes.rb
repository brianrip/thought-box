Rails.application.routes.draw do
  root "sessions#new"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :users, only:[:new, :create]
  resources :links, only:[:index, :create, :edit, :update, :new]

  namespace :api, default: {format: :json} do
    namespace :v1 do
      resources :links, only: [:update]
    end
  end
end

Rails.application.routes.draw do
  resources :breeds do
    get "page/:page", action: :index, on: :collection
    resources :felines do
      get "page/:page", action: :index, on: :collection
    end
  end
end

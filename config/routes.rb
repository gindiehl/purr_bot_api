Rails.application.routes.draw do
  resources :breeds do
    get "page/:page", action: :index, on: :collection
    collection do
      get :by_name
    end
    resources :felines do
      get "page/:page", action: :index, on: :collection
      collection do
        get :random
      end
    end
  end
end

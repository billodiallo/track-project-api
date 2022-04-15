Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :projects, only: [:index, :show, :create]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :programmers, only: [:index, :show, :create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

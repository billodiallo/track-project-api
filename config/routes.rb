Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'projects/index'
      get 'projects/show'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'programmers/index'
      get 'programmers/show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

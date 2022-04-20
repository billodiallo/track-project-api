Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :programmers do
        resources :projects
    
      end

      resources :projects

      # post '/addit', to: "secondcprojects#create"
      # get '/display', to: "secondcprojects#index"
      
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

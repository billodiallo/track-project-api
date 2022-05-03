Rails.application.routes.draw do
 
  namespace :api do
    namespace :v1 do
      resources :programmers
      resources :projects
      resources :vendors
     
   
    end
  end
  
end

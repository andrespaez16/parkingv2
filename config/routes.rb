Rails.application.routes.draw do
    root"vehicles#index"
  resources :rates
  resources :vehicles do
    resources :commings 
  end

  namespace :api do
    namespace :v1 do
      resources :vehicles,:rates, only: [:index,:show]
   end
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

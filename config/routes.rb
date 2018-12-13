Rails.application.routes.draw do
    root"vehicles#index"
  resources :rates
  resources :vehicles do
    resources :commings 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

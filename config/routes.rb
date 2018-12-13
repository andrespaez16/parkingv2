Rails.application.routes.draw do
    root"vehicles#index"
  resources :rates
  # se nesta las rutas de vehiculo con comming para que podemas medieante las rutas
  # hacer relacion el id del vehiculo con la llegadas que hace de la placa "vehiculo"
  resources :vehicles do
    resources :commings 
  end
# creamos la rutas del api en los bloques
  namespace :api do
    namespace :v1 do
      resources :vehicles,:rates, only: [:index,:show]
   end
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

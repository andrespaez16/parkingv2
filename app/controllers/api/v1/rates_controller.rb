class Api::V1::RatesController < ApplicationController

#    este controller del api nos permite mostrar solamente las tarifas y clase de vehiculos o rates creadas 
# en formato jason donde el endpoint donde podemos mirar la respuesta localhost:3000/api/v1/rates
    def index
        @rates = Rate.all
        render json: @rates  
     end
end

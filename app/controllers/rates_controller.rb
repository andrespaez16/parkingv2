class RatesController < ApplicationController

  # Este controller es el de tarifas por el cual podemos mostrar todas la tarifas creadas 
  # relacionadas con cada clase de vechiculo

  def index
  @rates=Rate.all 
end


# este el metodo de creacion de intancia para una nueva tarifa
def new
@rate=Rate.new
end
# este metodo crea la tarifa la guarda en el rate_params y se pregunta que si se creo lo redirecciona al index
def create
    @rate = Rate.new(rate_params)
    if @rate.save
      redirect_to "index"
       end
end
private
      def rate_params
        params.require(:rate).permit(:type_vehicle,:rate)
      end
end



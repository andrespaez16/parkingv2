class VehiclesController < ApplicationController
# Este controller es donde se desarrolla toda la informacion de la aplicacion ya que 
# maneja los rates y los vehicles

# este controller maneja la renderizacion de todos lo vehiculos y a su vez desde el mismo contorller
# podemos mostrar todo los rates que tiene o se an creadao y su vez intanciarlos y darle un uso adecuedo en la vista
    def index
      @vehicles=Vehicle.all  
      @vehicle=Vehicle.new
      @rates= Rate.all
      @rate=Rate.new
    end
    # se cre la intancias de lo vehiculos y su muetras todos los rates por el id relacionado
    def new
     @rates= Rate.all
     @vehicle=Vehicle.new 
    end
    # este metodo busca la placa que se quiere ingresar en la base de datos  y si esta la muesttra y no la deja
    # crear y si no l crea
    def create
      @vehicle=Vehicle.find_or_create_by(vehicle_params)
    end

    # metodo de mostra un placa del vehiculo especfica
    def show
      @vehicle = Vehicle.find(params[:id])

    end  
    private
      def vehicle_params
        params.require(:vehicle).permit(:plate,:rate_id,:created_at)
      end
end

class VehiclesController < ApplicationController

    def index
      @vehicles=Vehicle.all  
    end

    def new
     @rates= Rate.all
     @vehicle=Vehicle.new 
    end

    def create
        @vehicle = Vehicle.new(vehicle_params)
        if @vehicle.save


          redirect_to "index"
    
           end
    end
    private
      def vehicle_params
        params.require(:vehicle).permit(:plate,:rate_id)
      end
end

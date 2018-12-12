class VehiclesController < ApplicationController

    def index
      @vehicles=Vehicle.all  
      @vehicle=Vehicle.new
      @rates= Rate.all
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
        params.require(:vehicle).permit(:plate,:rate_id,:created_at)
      end
end

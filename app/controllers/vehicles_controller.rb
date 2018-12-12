class VehiclesController < ApplicationController

    def index
      @vehicles=Vehicle.all  
      @vehicle=Vehicle.new
      @rates= Rate.all
      @rate=Rate.new
    end
    def new
     @rates= Rate.all
     @vehicle=Vehicle.new 
    end
    def create
        @rate = Rate.new(rate_params)
        @vehicle = Vehicle.new(vehicle_params)
        if @vehicle.save
          redirect_to "index"
           end
    end

    def show
      @vehicle = Vehicle.find(params[:id])

    end  
    private
      def vehicle_params
        params.require(:vehicle).permit(:plate,:rate_id,:created_at)
      end
end

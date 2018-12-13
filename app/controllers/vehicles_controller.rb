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
      @vehicle=Vehicle.find_or_create_by(vehicle_params)
    end

    def show
      @vehicle = Vehicle.find(params[:id])

    end  
    private
      def vehicle_params
        params.require(:vehicle).permit(:plate,:rate_id,:created_at)
      end
end

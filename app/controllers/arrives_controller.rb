class ArrivesController < ApplicationController
def new
@commming=Comming.new
end
    def create
        @comming = Vehicle.new(comming_params)
        if @vehicle.save
          redirect_to "index"

           end

    end
    private
      def comming_params
        params.require(:comming).permit(:status,:id_vehicles)
      end
end

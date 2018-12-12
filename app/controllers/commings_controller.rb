class CommingsController < ApplicationController
  def create
    comming = Comming.new(commings_params)
    @comming = comming.vehicle.new(commings_params)
    unless @comming.save
    end
  end
      private
        def cooming_params
          params.require(:comming).permit(:status,:vehicle_id)
        end
end

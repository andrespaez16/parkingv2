class CommingsController < ApplicationController
  def create
    @vehicle=Vehicle.find(params[:vehicle_id])
    p @vehicle
  end
  private
  def cooming_params
    params.require(:comming).permit(:status,:vehicle_id)
  end
end

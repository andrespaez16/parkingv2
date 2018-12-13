class Api::V1::VehiclesController < ApplicationController
   def index
    @vehicles = Vehicle.all
    render json: @vehicles
   end

   def show
    @vehicle = Vehicle.find(params[:id])
    render json: @vehicles

  end 
end

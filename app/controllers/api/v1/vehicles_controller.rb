class Api::V1::VehiclesController < ApplicationController
   
  #    este controller del api nos permite mostrar solamente  los palcas creadas y lo que contiene las dentro de ellas
# en formato jason donde el endpoint donde podemos mirar la respuesta localhost:3000/api/v1/vechicles
  def index
    @vehicles = Vehicle.all
    render json: @vehicles
   end

   def show
    @vehicle = Vehicle.find(params[:id])
    render json: @vehicles

  end 
end

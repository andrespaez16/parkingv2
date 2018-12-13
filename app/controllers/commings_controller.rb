class CommingsController < ApplicationController

  # Este metodo su funcion es encotrar el id del vehciulo para asi poder relacionarlo con las llegadas
  # que puede a dar con este vehiculo
  def create
    @vehicle=Vehicle.find(params[:vehicle_id])
    @comming=@vehicle.commings.create()
  end
  # private se esta requiriendo las vairiables para que se puedan ser publicas en las vistas
  private
  def cooming_params
    params.require(:comming).permit(:status,:vehicle_id)
  end
end
# Este controller genera lo commings las llegadas para cada vehiculo para en su momento tener
# # un historial de llegadas para cada vehiculo
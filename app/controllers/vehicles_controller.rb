class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def search
    @vehicles = VehicleApiQuery.new(params).search
    respond_to do |format|
      format.js
    end
  end

  def create
    @vehicle = Vehicle.create(vehicle_params)
    respond_to do |format|
      format.js
    end
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:vin, :make, :model, :year, :vehicle_type_name, :color, :current_meter_value)
  end
end

class VehiclesController < ApplicationController
  # expose(:vehicles) { Vehicle.all }
  def index
  end

  def search
    @vehicles = VehicleApiQuery.new(params).search
    respond_to do |format|
      format.js
    end
  end

end

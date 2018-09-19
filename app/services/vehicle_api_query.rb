class VehicleApiQuery
  attr_accessor :vin

  def initialize(params)
    @vin = params[:vin]
  end

  def search
    if api_response.code == 200
      JSON.parse(api_response.body)
    else
      logger.error "Fleetio API Error: Query: #{vin}"
    end
  end

  private

  def api_response
    @api_response ||= FleetioAdapter.new.vehicles(vin)
  end
end
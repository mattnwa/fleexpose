class FleetioAdapter
  def vehicles vin
    RestClient.get( "#{endpoint}/vehicles", headers.merge(params(vin)) )
  end

  private

  def endpoint
    "https://secure.fleetio.com/api/v1"
  end

  def headers
    { "Authorization" => "#{api_key}",
      "Account-Token" => account_token
    }
  end

  #TODO Convert to allow other filters.
  def params vin
    { params: { 'q[vin_cont]': vin } }
  end

  def api_key
    Rails.application.credentials.fleetio_api_key
  end

  def account_token
    Rails.application.credentials.fleetio_account_token
  end
end
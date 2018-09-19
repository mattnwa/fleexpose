module VehiclesHelper

  def image(vehicle)
    image_tag((vehicle['default_image_url_large'] || 'default-car.jpg'), style: 'width: 100%;' )
  end
end

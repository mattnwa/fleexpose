module VehiclesHelper

  def image(vehicle)
    image_tag((vehicle || 'default-car.jpg'), style: 'width: 100%;' )
  end
end

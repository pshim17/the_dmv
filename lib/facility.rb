class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles

  def initialize(facility)
    @name = facility[:name]
    @address = facility[:address]
    @phone = facility[:phone]
    @services = []
    @registered_vehicles = []
  end

  def add_service(service)
    @services << service
  end

  def registered_vehicles
    @registered_vehicles
  end

  def collected_fees
    0
  end
end

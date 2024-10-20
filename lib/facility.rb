require 'date'

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

  def register_vehicle(vehicle)
    if (vehicle.registration_date == nil)
      vehicle.registration_date = Date.today
    end 

    if (vehicle.plate_type == nil && vehicle.antique? == false && vehicle.electric_vehicle? == false )
      vehicle.plate_type = :regular
    end
    @registered_vehicles << vehicle
  end
end

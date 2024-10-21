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
    total_fee = 0

    if @registered_vehicles.size == 0
      total_fee
    else
      @registered_vehicles.each do |vehicle|
        if vehicle.plate_type == :regular
          total_fee += 100
        elsif vehicle.plate_type == :antique
          total_fee += 25
        elsif vehicle.plate_type == :ev
          total_fee += 200
        end
      end
      total_fee
    end
  end

  def register_vehicle(vehicle)
    if @services.include?("Vehicle Registration")
      if (vehicle.registration_date == nil)
        vehicle.registration_date = Date.today
      end 
  
      if (vehicle.plate_type == nil && vehicle.antique? == false && vehicle.electric_vehicle? == false )
        vehicle.plate_type = :regular
      elsif (vehicle.plate_type == nil && vehicle.antique? == true && vehicle.electric_vehicle? == false)
        vehicle.plate_type = :antique
      elsif (vehicle.plate_type == nil && vehicle.antique? == false && vehicle.electric_vehicle? == true)
        vehicle.plate_type = :ev
      end
      @registered_vehicles << vehicle
    else
      return nil
    end
  end

  def administer_written_test(registrant)
    if @services.include?("Written Test")
      registrant.license_data[:written] = true 
    else
      false
    end
  end
end

class VehicleFactory
    attr_reader :vehicle_list

    def initialize
        @vehicle_list = []
    end

    def create_vehicles(vehicles)
        @vehicle_list = vehicles.map do |vehicle_details|
            Vehicle.new(vehicle_details)
        end
    end
end
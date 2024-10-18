class Registrant
    attr_reader :name, :age, :permit, :license_data

    def initialize(name, age, permit = false, license_data = {:written=>false, :license=>false, :renewed=>false})
        @name = name
        @age = age
        @permit = permit
        @license_data = license_data
        @registered_vehicles = []
    end
    
    def permit?
        @permit = permit
    end

    def earn_permit
        if @permit != true
            @permit = true
        end
    end
end
class FacilityFactory
    attr_reader :facility_list

    def initialize
        @facility_list = []
    end

    def create_facilities(facilities)
        @facility_list = facilities.map do |facility_details|
            Facility.new(facility_details)
        end
    end
end
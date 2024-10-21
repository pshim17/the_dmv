require 'spec_helper'

RSpec.describe Facility do
    before(:each) do
        @factory = FacilityFactory.new
        @co_facilities = DmvDataService.new.co_dmv_office_locations
        @ny_facilities = DmvDataService.new.ny_dmv_office_locations
        @mo_facilities = DmvDataService.new.mo_dmv_office_locations
    end

    describe 'can created Facility objects from multiple data sources ' do
        it 'can import CO offices' do
            @factory.create_facilities(@co_facilities)
            expect(@factory).to be_an_instance_of(FacilityFactory)
            expect(@factory.facility_list[0]).to be_an_instance_of(Facility)
        end

        it 'can import NY offices' do
            @factory.create_facilities(@ny_facilities)
            expect(@factory).to be_an_instance_of(FacilityFactory)
            expect(@factory.facility_list[0]).to be_an_instance_of(Facility)
        end

        it 'can import MO offices' do
            @factory.create_facilities(@mo_facilities)
            expect(@factory).to be_an_instance_of(FacilityFactory)
            expect(@factory.facility_list[0]).to be_an_instance_of(Facility)
        end
    end
end
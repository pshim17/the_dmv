require 'spec_helper'
require 'pry'

RSpec.describe Facility do
  before(:each) do
    @facility = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
  end
  
  describe '#initialize' do
    it 'can initialize' do
      expect(@facility).to be_an_instance_of(Facility)
      expect(@facility.name).to eq('DMV Tremont Branch')
      expect(@facility.address).to eq('2855 Tremont Place Suite 118 Denver CO 80205')
      expect(@facility.phone).to eq('(720) 865-4600')
      expect(@facility.services).to eq([])
    end
  end

  describe '#add service' do
    it 'can add available services' do
      expect(@facility.services).to eq([])
      @facility.add_service('New Drivers License')
      @facility.add_service('Renew Drivers License')
      @facility.add_service('Vehicle Registration')
      expect(@facility.services).to eq(['New Drivers License', 'Renew Drivers License', 'Vehicle Registration'])
    end
  end 

  describe "#registered vehicles" do
    it 'can display registered vehicles' do
        expect(@facility.registered_vehicles).to eq([])
    end
  end

  describe "#collected_fees" do
    it 'can display collected fees' do
      expect(@facility.collected_fees).to eq(0)
    end
  end

  describe "#register_vehicle" do
    it 'can register vehicle' do
      expect(@facility.register_vehicle(@facility).size).to eq(1)
    end
  end
end 
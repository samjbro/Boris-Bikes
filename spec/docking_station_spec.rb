require 'docking_station'

describe DockingStation do
		it {expect(DockingStation.new).to respond_to(:release_bike)}
    it {expect(subject.release_bike).to be_a(Bike)}
    it {expect(subject.release_bike).to be_working}
    it {expect(subject).to respond_to(:dock)}
   

end

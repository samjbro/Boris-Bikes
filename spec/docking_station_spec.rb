require 'docking_station'

describe DockingStation do
  it 'release_bike returns an error if there are no bikes available' do
    expect{subject.release_bike}.to raise_error "Errorrrr"
  end
  it 'releases bike from docking station' do
    expect(DockingStation.new).to respond_to :release_bike
  end
  it 'docks a bike into the docking station' do
    expect(subject).to respond_to(:dock).with(1).argument
  end
  it 'returns a docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end

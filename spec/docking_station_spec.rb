require 'docking_station'

describe DockingStation do
  it 'releases bike from docking station' do
    expect(DockingStation.new).to respond_to :release_bike
  end
end

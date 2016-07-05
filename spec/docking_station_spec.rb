require 'docking_station'
describe DockingStation do
  it "Releases a bike" do
    expect(DockingStation).to respond_to(:release_bike)
  end
end

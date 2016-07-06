require 'docking_station'
describe DockingStation do
  it "Releases a bike" do should respond_to(:release_bike) end
  it "gets a bike" do
    expect(subject.release_bike).to be_a(Bike)
  end
  it "expects bike to be working" do
    expect(subject.release_bike).to be_working
  end
end

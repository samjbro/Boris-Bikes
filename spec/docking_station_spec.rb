require 'docking_station'
describe DockingStation do
  it "Releases a bike" do should respond_to(:release_bike) end

  it "gets a bike" do
    expect(subject.release_bike).to be_a(Bike)
  end
  it "raises an error" do
    expect{subject.release_bike}.to raise_error("No bikes avalible")
  end

  it "expects bike to be working" do
    expect(subject.release_bike).to be_working
  end

  it {should respond_to(:dock_bike).with(1).argument}

  it "should see a docked bike" do
  	bike = Bike.new
  	subject.dock_bike(bike)
  	expect(subject.bike).to eq bike
  end

end

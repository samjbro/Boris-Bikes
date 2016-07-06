require 'docking_station'
describe DockingStation do
  
  describe '#release_bike' do
	  it "Release bike method exists" do 
	  	should respond_to(:release_bike) 
	  end
	  it "releases a bike if one is available" do
	  	bike = Bike.new
	  	subject.dock_bike(bike)
	    expect(subject.release_bike).to eq bike
	  end
	  it "raises an error" do
	    expect{subject.release_bike}.to raise_error("No bikes available")
	  end

	  it "expects bike to be working" do
	  	bike = Bike.new
	  	subject.dock_bike(bike)
	    expect(subject.release_bike).to be_working
	  end
	end

	describe '#dock_bike' do
		it "raises an error" do
			bike1 = Bike.new
			bike2 = Bike.new
			subject.dock_bike(bike1)
			expect{subject.dock_bike(bike2)}.to raise_error("Docking station full")
		end
	end

  it {should respond_to(:dock_bike).with(1).argument}

  it "should see a docked bike" do
  	bike = Bike.new
  	subject.dock_bike(bike)
  	expect(subject.bike).to eq bike
  end

end

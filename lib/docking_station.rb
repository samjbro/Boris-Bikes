require_relative "bike"

class DockingStation
	attr_reader :bike
	# def initialize
	# 	@docked_bike = Bike.new
	# end
  def release_bike
    fail "No bikes avalible"
    Bike.new
  end

  def dock_bike bike
  	@bike = bike
  end

end

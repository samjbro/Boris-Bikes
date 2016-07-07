require_relative 'bike.rb'

class DockingStation
  attr_accessor :bike
  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end

dock = DockingStation.new
dock.release_bike

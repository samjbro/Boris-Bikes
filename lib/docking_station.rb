require_relative 'bike.rb'

class DockingStation
  attr_accessor :bike
  def release_bike
    raise "No bikes docked" unless @bike
    @bike
  end

  def dock(bike)
    raise 'Docking station full' if @bike
    @bike = bike
  end
end

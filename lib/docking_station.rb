require_relative 'bike.rb'

class DockingStation

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes docked" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Docking station full' if @bikes.length >= 20
    @bikes << bike
  end
end

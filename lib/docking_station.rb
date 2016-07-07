require_relative 'bike.rb'

class DockingStation
  attr_accessor :bike
  def release_bike
    # Bike.new
    if @bike == nil
      raise "Errorrrr"
    else
      @bike
    end
  end

  def dock(bike)
    @bike = bike
  end
end

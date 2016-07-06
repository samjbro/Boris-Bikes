require_relative 'bike'
class DockingStation
	attr_accessor :docked_bikes
	def initialize
		@docked_bikes = Array.new
	end
	def release_bike
		Bike.new
	end
	def dock bike

	end
end

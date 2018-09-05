require './lib/bike'

class DockingStation
  attr_reader :docked_bikes, :bikes_available
  def initialize
    @bikes_available = false 
  end
  def release_bike
    Bike.new
  end
  def dock(bike)
    @docked_bikes = bike
    @bikes_available = true
  end
end

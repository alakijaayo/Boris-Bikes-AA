class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No Bikes Available.' if empty?
     @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station full.' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end

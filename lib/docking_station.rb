require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    raise "There are no docked bikes." if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station full." if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.size >= 20
  end

  def empty?
    @bikes.empty?
  end

end

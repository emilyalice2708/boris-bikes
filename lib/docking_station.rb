require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    raise "There are no docked bikes." if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station full." if @bikes.size >= 20
    @bikes << bike
  end

end

require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "There are no docked bikes." unless @bike
    @bike
  end

  def dock(bike)
    raise "Docking station full." if @bike
    @bike = bike
  end

end

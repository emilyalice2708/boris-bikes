require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  describe '#initialize' do
    it 'has default capacity of 20' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

    it 'has a variable capacity' do
      large_station = DockingStation.new(50)
      50.times { large_station.dock(double(:bike)) }
      expect { large_station.dock(double(:bike)) }.to raise_error "Docking station full."
    end
  end

  describe '#release_bike' do
    let(:bike) { double :bike }
    it 'releases bikes that work' do
      allow(bike).to receive(:working?).and_return(true)
      allow(bike).to receive(:broken?).and_return(false)
      subject.dock(bike)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it 'releases docked bikes' do
      allow(bike).to receive(:broken?).and_return(false)
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it 'raises an error if no bikes have been docked' do
      expect { subject.release_bike }.to raise_error "There are no docked bikes."
    end

    it 'does not release broken bikes' do
      allow(bike).to receive(:broken?).and_return(true)
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error "There are no docked bikes."
    end
  end

  describe '#dock' do
    let(:bike) { double :bike }
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks bikes' do
      expect(subject.dock(bike)).to eq([bike])
    end

    it 'raises an error if 20 bikes docked' do
      # Namespace operator (::) allows us to access class constants.
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect { subject.dock(double(:bike)) }.to raise_error "Docking station full."
    end

  end

end

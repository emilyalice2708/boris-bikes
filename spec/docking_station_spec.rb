require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it 'releases bikes that work' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks bikes' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
  end

  it { is_expected.to respond_to(:bike) }
end

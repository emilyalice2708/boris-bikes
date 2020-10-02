require 'bike'

describe Bike do
  it { is_expected.to respond_to(:working?) }

  describe '#is_broken' do
    it 'reports bike as broken' do
      subject.is_broken
      expect(subject.broken?).to eq(true)
    end
  end
end

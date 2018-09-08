require './lib/dockingstation'
require './lib/bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bike }

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error "No Bikes Available."
    end

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error "Docking Station full."
    end
  end
  end

  #it 'releases a working bike' do
    #bike = subject.release_bike
    #expect(bike).to be_working
  #end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end
end

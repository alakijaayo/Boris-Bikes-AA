require './lib/dockingstation'
require './lib/bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  it '"release_bike" returns a "Bike" object' do
    bike = subject.release_bike
    expect(bike).to be_working
    #expect(subject.release_bike).to be_a(Bike)
  end
end

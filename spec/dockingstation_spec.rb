require './lib/dockingstation'
require './lib/bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  it { is_expected.to respond_to :dock }
  it '"release_bike" returns a "Bike" object' do
    bike = subject.release_bike
    expect(bike).to be_working
    #expect(subject.release_bike).to be_a(Bike)
  end
  it "stores a bike object when docked" do
    bike123 = Bike.new
    subject.dock(bike123)
    expect(subject.docked_bikes).to eq bike123
  end
end

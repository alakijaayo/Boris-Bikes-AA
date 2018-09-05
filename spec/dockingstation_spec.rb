require './lib/dockingstation'
require './lib/bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  it { is_expected.to respond_to :dock }
  it { is_expected.to respond_to :bikes_available}
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

  it 'checks if "bikes_available"' do
    #subject.bikes_available == false
    expect(subject.bikes_available).to be false
    subject.dock(Bike.new)
    #subject.bikes_available == true
    expect(subject.bikes_available).to be true
  end
end

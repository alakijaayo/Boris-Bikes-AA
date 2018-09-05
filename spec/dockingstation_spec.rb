require './lib/dockingstation'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
=begin
  it 'has "release_bike" method' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
=end
end

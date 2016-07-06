require 'bike'
describe Bike do
  bike = Bike.new
  it { expect(bike.working?).to eq true }
end

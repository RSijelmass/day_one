require 'day_one'

describe 'day_one' do
  it 'adds 1 to every value' do
    expect(adds_one([1,2,3,4,5])).to eq [2,3,4,5,6]
  end
end

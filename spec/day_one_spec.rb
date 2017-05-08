require 'day_one'

describe 'day_one' do
  it 'adds 1 to every value' do
    expect(adds_one([1,2,3,4,5])).to eq [2,3,4,5,6]
  end
  it 'sorts the array' do
    expect(sort_array([1,3,5,4,2])).to eq [1,2,3,4,5]
  end
end

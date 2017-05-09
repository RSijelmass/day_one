require 'day_one'

describe 'day_one' do
  it 'adds 1 to every value' do
    expect(adds_one([1,2,3,4,5])).to eq [2,3,4,5,6]
  end
  it 'sorts the array' do
    expect(sort_array([1,3,5,4,2])).to eq [1,2,3,4,5]
  end
  it 'sorts array, then adds 1 to every value' do
    expect(sort_add([1,3,5,4,2])).to eq [2,3,4,5,6]
  end
  it 'adds all values of the array' do
    expect(sum_array([1,2,3,4,5])).to eq 15
  end
  it 'returns the sum of an array times two' do
    expect(sum_twice([1,2,3,4,5])).to eq 30
  end
  it 'adds 1 to each value in a hash' do
    expect(adds_one_hash({ a: 1, b: 2 })).to eq ({a: 2, b: 3})
  end
  it 'sorts the values in a hash' do
    expect(sort_hash({ a: 2, b: 5, c: 1 })).to eq ({a: 1, b:2, c: 5})
  end
  it 'gives values of hash in a sorted array' do
    expect(sort_values({ a: 2, b: 5, c: 1 })).to eq [1,2,5]
  end
end

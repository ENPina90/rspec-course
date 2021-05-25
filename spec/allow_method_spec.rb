RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles'
    calculator = double
    allow(calculator).to recieve(:add).and_return(15)
    # rspec will create a dummy method that will always return 15
    expect(calculator.add).to eq(15)
    expect(calculator.add('hello')).to eq(15)
    #it doesnt matter what you pass the method it will return 15
  end

  it 'can stub one or more methods on real objects'
    arr = [1, 2, 3]
    allow(arr).to recieve(:sum).and_return(10)
    expect(arr.sum).to eq(10)
    #sum will always equal 10
    # but other methods still work normally
    arr.push(4)
    expect(arr). eq([1, 2, 3, 4])
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to recieve(:pop).and_return(:c, :b, nil)
    # passing and_return multiple values allows you mock what it will return after each subsquent method call.
    expect(mock_array.pop).to eq(:c)
    # second time calling it...
    expect(mock_array.pop).to eq(:b)
    #everytime after that...
    expect(mock_array.pop).to be_nill
    expect(mock_array.pop).to be_nill
  end

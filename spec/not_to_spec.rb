RSpec.describe 'not to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
    expect(5).not_to be_odd
    expect([1, 2, 3]).not_to be_empty
    expect(nil).not_to be_truthy
    expect('Philidelphia').not_to start_with('car')
    expect('Philidelphia').not_to end_with('city')
    expect(5).not_to respond_to(:length)
    expect([:a, :b, :c]).not_to include(:d)
    expect { 11 / 3 }.not_to raise_error
    #when using the not_to raise error, better to be generic and not name a specific error.
  end
end

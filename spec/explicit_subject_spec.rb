#and
RSpec.describe Array do
  subject(:sally) { [3, 5] }

  it 'caches the object within an example' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

#or
  it 'creates a new object for a new example' do
    expect(sally).to eq([3, 5])
  end
end

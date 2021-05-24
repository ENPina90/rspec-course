RSpec.shared_examples 'a Ruby object with a length of three' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with a length of three'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a Ruby object with a length of three'
end



RSpec.describe Array do
  subject { [1, 2] }

  it 'has values of 1 and 2' do
    expect(subject).to eq([1, 2])
  end

  it { is_expected.to eq([1, 2])}
end

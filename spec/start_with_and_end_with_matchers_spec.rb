RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at beginning or end of array'
    expect(subject).to start_with(:a, :b)
    expect(subject).to end_with(:d)
  end
end

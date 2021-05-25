RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it { is_expected.to include('choc') }
  end

  describe [10, 20, 30] do
    it { is_expected.to include(20, 30, 10) }
  end

  describe ({ a: 2, b: 4}) do
    it { is_expected.to include(:b)}
    it { is_expected.to include(b: 4)}
  end
end

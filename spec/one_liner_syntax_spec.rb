Rspec.describe "shorthand syntax" do
  subject { 5 }

  context 'one-liner syntax' do
    it { is_expected.to eq(5)}
  end
end

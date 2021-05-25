RSPEC.describe 'contain_exactly matcher' do
	subject { [1, 2, 3] }

	it { is_expected.to contain_exactly(1, 2, 3,) }
	it { is_expected.to contain_exactly(3, 2, 1,) }
end

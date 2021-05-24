expect([5, 7, 9, 13]).to all(be_odd)
expect([5, 7, 9].to all(be < 10)

#or 

describe [5, 6, 7] do
	it { is_expected.to all(be_odd) }
	it { is_expected.to all(be < 10) }
end
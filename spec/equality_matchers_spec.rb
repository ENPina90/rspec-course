describe 'equal/be matcher' do
  let(:a) { [1, 2, 3] }
  let(:b) { [1, 2, 3]}
  let(:c) { a }

  it 'it tests object identity' do
    expect(a).to be(c)
    expect(a).not_to be(b)
  end
end

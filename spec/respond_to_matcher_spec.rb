class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'plop!'
  end

  def purchase(number)
    "I bought #{number} hot chocolates"
  end

RSpec.describe HotChocolate do
  it { is_expected.to respond(:purchase, :discard) }
  it { is_expected.to respond(:purchase).with(1).argument }
end

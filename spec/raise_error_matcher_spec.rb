RSpec.describe 'raise_matcher' do

  def some_method
    x
  end

  class CustomError < StandardError; end

  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    expect { raise CustomError }.to raise_error(CustomError)
  end
end

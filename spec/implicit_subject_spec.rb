#Create an example group using ​RSpec.describe​ with an argument of ​Array​.
RSpec.describe Array do
#Add an example with a docstring of your choice.
  it 'should start off empty' do
    #Write an assertion that tests that the initial length of ​subject​ is 0.
    expect(subject.length).to eq(0)
    #In the same example, invoke the ​push​ method to add an element to the ​subject​ array.
    subject << 'some value'
    #Write another assertion to check that the length of the array is now 1.
    expect(subject.length).to eq(1)
  end
end

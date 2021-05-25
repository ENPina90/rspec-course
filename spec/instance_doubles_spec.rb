class Person
  def greeting(seconds)
    sleep(seconds)
    'hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method you tell it to'
      #this is a bad thing, because we are modelingnbehavior that our actual object does not do
      person = double(greeting: 'hello', other_method: "I shouldnt be here")
      expect(person.greeting).to eq('hello')
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      person = instance_double(Person)
      #much pickier,' it'll raise an error if it does anything the actual class cannot do
      #pass
      allow(person).to receive(greeting:).with(3).and_return('hello')
      expect(person.greeting(3)).to eq('hello')

      #fail
      allow(person).to receive(greeting:, other_method:).with(3, 10).and_return('hello')

    end
  end
end


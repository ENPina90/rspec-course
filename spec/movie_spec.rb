# movie_spec.rb
class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, act: "any string", fall_off_ladder: "any other string", light_on_fire: true)}
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 things' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act).at_least(2).times # method is invoked at least 2 times
      expect(stuntman).to receive(:fall_off_ladder).at_most(5).times # method is invoked between 1 and 5 times, but no more.
      expect(stuntman).to receive(:light_on_fire).exactly(1).times # method invoked exactly once.
      subject.start_shooting
    end
  end
end

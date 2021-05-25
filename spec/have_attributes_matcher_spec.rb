RSpec.describe "have_attributes matcher" do
  describe Wrestler.new('Stone Cold Steve Austin', 'Stunner') do
    it 'checks for objects and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finsher: 'Stunner')
    end
  end
end

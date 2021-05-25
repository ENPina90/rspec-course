RSpec.describe 'a random double' do
  it 'only allows defined methods' do
    stuntman = double('Mr. Danger')
    allow(stuntman).to recieve_messages(fall_off_ladder: 'ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('ouch')
  end
end

RSpec.describe 'a double' do
  it 'only allows defined methods' do
    db = double('Database Connection')
    allow(db).to receive_messages(connect: true, disconnect: 'Goodbye')

    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')
  end
end

RSpec.describe 'a double' do
  it 'only allows defined methods' do
    fs = double('File System')
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)

    expect(fs.read).to eq("Romeo and Juliet")
    expect(fs.write).to eq(false)
  end
end

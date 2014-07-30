require 'rspec'
require 'dictionary'

describe Term do
  it 'is initalized with a word' do
    test_word = Term.new('fish')
    expect(test_word).to be_an_instance_of Term
  end
end

require 'rspec'
require 'dictionary'

describe Term do
  before do
    Term.clear
  end
  it 'is initalized with a word' do
    test_word = Term.new('fish', 'swim')
    expect(test_word).to be_an_instance_of Term
  end
  it 'lets you list a word' do
    test_word = Term.new('scrub', 'alot')
    expect(test_word.word_input).to eq 'scrub'
  end
  it 'lets you list multiple words' do
    test_word = Term.new('scrub', 'alot').save
    test_word2 = Term.new('wash', 'alot alot').save
    expect(Term.words_arr).to eq ["scrub", 'wash']
  end
  it 'lets you define a word twice' do
    dog_word = Term.new('dog', 'four legged animal')
    dog_word.add_definition('with hair')
    expect(dog_word.definition).to eq ['four legged animal', 'with hair']
  end
  it 'lets user input a word and have it return the definition' do
    dog_word = Term.new('dog', 'four legged animal').save
    word_index = Term.words_arr.index("dog")
    expect(Term.words[word_index].definition).to eq ['four legged animal']
  end
end

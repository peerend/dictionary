class Term

@@all_words = []

  def initialize(word_input, definition)
    @definition = [definition]
    @word_input = word_input
  end

  def Term.clear
    @@all_words = []
  end

  def Term.words_arr
    words_array = []
    @@all_words.each do |word|
      words_array.push(word.word_input)
    end
    words_array
  end

  def Term.words
    @@all_words
  end

  def save
    @@all_words << self
  end

  def word_input
    @word_input
  end

  def definition
    @definition
  end
  def add_definition(new_definition)
    @definition << new_definition
  end
end

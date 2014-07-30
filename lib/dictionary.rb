class Term

@@all_words = []

  def initialize(word)

    @definition = []
    @word = word
  end

  def Term.clear
    @@all_lists = []
  end

  def Term.words
    @@all_words
  end

  def save
    @@all_words << self
  end

  def word
    @word
  end

  def definition
    @definition
  end

  def add_definition(new_definition)
    @definition << new_definition
  end
end

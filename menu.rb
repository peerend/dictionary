require './lib/dictionary'

def main_menu
  loop do
    puts "Press 'n' to add a new word and a definition"
    puts "Press 'a' to add an additional definition"
    puts "Press 'l' to list your words"
    puts "Press 's' to search for a word"
    puts "Press 'r' to remove a word and definition"
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'n'
      add_word
    elsif main_choice == 'a'
      new_definition
    elsif main_choice == 'l'
      show_words
    elsif main_choice == 's'
      search_word
    elsif main_choice == 'r'
      remove_word
    elsif main_choice == 'x'
      puts "Good-bye!"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end

def add_word
  puts "enter a word"
  new_word = gets.chomp
  puts "enter a definition"
  new_def = gets.chomp
  Term.new(new_word, new_def).save
end

def show_words
  puts Term.words_arr
end

def search_word
  puts "enter a word to search for"
  user_search = gets.chomp.to_s
  word_index = Term.words_arr.index(user_search)
  if word_index != nil
    puts Term.words[word_index].definition
  else
    puts "Not in dictionary"
  end
end
main_menu

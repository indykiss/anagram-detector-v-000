class Anagram
  attr_accessor :word_to_find

  def initialize(word_to_find)
    @word_to_find = word_to_find 
  end 
  
  def match(str_with_anagram)
    str_with_anagram.find_all do |word| 
      if word.split("").sort == self.word_to_find.split("").sort 
         word
      end
    end 
  end
end 
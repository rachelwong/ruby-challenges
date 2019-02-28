# Definition
# 
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
# 
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb
class Definition
    attr_accessor :word, :definition

    def add_word(word, definition)
        @word = word
        @definition = definition.downcase
    end

    def lookup(word)
        puts @definition
    end

    def total_words(definition)
        definition_list = {}
        definition_list = definition.split(" ")
        puts definition_list.length
    end
end

definition = Definition.new
definition.add_word('ruby', 'A red, precious stone')
definition.lookup('ruby')
definition.total_words('a red precious stone')
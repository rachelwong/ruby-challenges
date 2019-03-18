class Definition
    attr_accessor :word, :definition

    def word(word, definition)
        @word = word
        @definition = definition
        @word_list = []
        # hash of words => definitions 
        @lookup = {}
    end

    def add_word(word, definition)        
        @word = word
        @word_list << word
        @definition = definition
        @lookup[word] << definition
    end

    def lookup
        puts "Total number of definitions = #{@definition}"
    end

    def total_words(word)
        return @lookup.length
    end
end

definition = Definition.new
definition.add_word('ruby', 'A red, precious stone')
definition.add_word('diamond', 'A brilliant, clear stone')
definition.lookup
# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_accessor :text

    def initialize(input)
        @text = input
    end

    def self.num_words(text)
        text.split(" ").length
    end

    def self.vowels(text)
        text.split("").grep(/[aeiouAEIOU]/).length
    end

    def self.consonants(text)
        text.split("").grep(/[^aeiouAEIOU\s]/).length
    end

    def self.most_common(text)
        hash = Hash.new(0)
        text.split("").each do |char|
             uchar = char.upcase
             hash[uchar] += 1
        end
        hash.delete_if {|k,v| k == " "}
        hash.sort_by {|char,number| number}.last
    end
end
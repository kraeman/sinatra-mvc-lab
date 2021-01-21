class PigLatinizer
    def piglatinize(string)
        new_string = string
        array = new_string.split(" ")
        final = []
        array.each do |word|
            array_from_word = word.split("")
            if array_from_word.first == "A" || array_from_word.first == "a" || array_from_word.first == "E" || array_from_word.first == "e" || array_from_word.first == "I" || array_from_word.first == "i" || array_from_word.first == "O" || array_from_word.first == "o" || array_from_word.first == "U" || array_from_word.first == "u"
                array_from_word << "w"
                array_from_word << "a"
                array_from_word << "y"
                recombine = array_from_word.join
                final << recombine
            elsif array_from_word[-2] == "a" && array_from_word[-1] == "y"
                array_from_word.unshift("y")
                array_from_word.unshift("a")
                recombine = array_from_word.join
                final << recombine
            elsif array_from_word[1] != "a" &&  array_from_word[1] != "e" &&  array_from_word[1] != "i" &&  array_from_word[1] != "o" &&  array_from_word[1] != "u" && array_from_word[2] != "a" && array_from_word[2] != "e" &&  array_from_word[2] != "i" &&  array_from_word[2] != "o" &&  array_from_word[2] != "u"
                first_letter = array_from_word.shift
                second_letter = array_from_word.shift
                third_letter = array_from_word.shift
                array_from_word << first_letter
                array_from_word << second_letter
                array_from_word << third_letter
                array_from_word << "a"
                array_from_word << "y"
                recombine = array_from_word.join
                final << recombine    
            elsif array_from_word[1] != "a" &&  array_from_word[1] != "e" &&  array_from_word[1] != "i" &&  array_from_word[1] != "o" &&  array_from_word[1] != "u"
                first_letter = array_from_word.shift
                second_letter = array_from_word.shift
                array_from_word << first_letter
                array_from_word << second_letter
                array_from_word << "a"
                array_from_word << "y"
                recombine = array_from_word.join
                final << recombine
            else
                first_letter = array_from_word.shift
                array_from_word << first_letter
                array_from_word << "a"
                array_from_word << "y"
                recombine = array_from_word.join
                final << recombine
            end
        end
        final.join(" ")
    end
end
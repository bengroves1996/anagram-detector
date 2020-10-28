# Your code goes here!

class Anagram
    
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(words_list)
        i = 0
        bin1 = []
        bin2 =[]
        runner = (1..words_list.length).to_a
        for i in runner
            check = @word.split("").sort.join
            log1 = words_list[i-1].split("").sort.join
            log2 = words_list
            bin2.append(log1)
            if check == log1
                bin1.append(log1[i-1])
            end 
        end 
        if bin1 != []
            return bin1
        else 
            return []
        end 
    end 
end 
     
detector = Anagram.new("ba")
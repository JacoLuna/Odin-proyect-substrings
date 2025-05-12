dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
def substrings(setence, dictionary)

    hash = Hash.new(0)
    setence.split.each do | word |
        dictionary.each do | dictionaryWord | 
    
            if( word.downcase.include?(dictionaryWord) )
                hash[dictionaryWord] += 1
            end
    
        end 
    end
    hash.sort { |a , b| a <=> b}.to_h
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

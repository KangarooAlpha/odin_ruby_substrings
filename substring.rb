def substrings(string, dictionary)
  str_arr = string.downcase.split(" ")
  nhash = str_arr.reduce(Hash.new(0)) do |hash, word|
    dictionary.map do |char|
      if word.include?(char.downcase)
        hash[char] += 1
      end  
    end
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

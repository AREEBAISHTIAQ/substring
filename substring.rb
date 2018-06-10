def substrings(words, dictionary)
    count = Hash.new(0)
    dictionary.each do |substring|
        words.split.each do |word|
            count[substring] += 1 if word.downcase.include? substring.downcase
        end
    end
    puts count
end

substrings("below", dictionary)
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
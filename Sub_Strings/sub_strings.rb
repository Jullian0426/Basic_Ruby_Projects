def substrings(string, dictionary)
  substrings_count = Hash.new(0)
  stringArray = string.downcase.split

  dictionary.each do |substring|
    stringArray.each do |word|
      if word.include?(substring.downcase)
        substrings_count[substring] += 1
      end
    end
  end
  substrings_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
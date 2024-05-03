def substrings(word, dictionary)
  substrings_count = Hash.new(0)

  dictionary.each do |substring|
    if word.downcase.include?(substring.downcase)
      substrings_count[substring] += 1
    end
  end
  substrings_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
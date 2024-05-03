def substrings(string, dictionary)
  substrings_count = Hash.new
  normalized_string = string.downcase

  dictionary.each do |substring|
    matches = normalized_string.scan(substring.downcase)
    if matches.any?
      substrings_count[substring] = matches.count
    end
  end
  substrings_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
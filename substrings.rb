# substrings.rb

# init an array of substrings as a default parameter
dictionary = {"below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part"}

# make the method #substrings that takes a string and an array of substrings as parameters
def substring(string, dictionary)

  # make the string case insensitive and split the words into an array
  words = string.downcase.split(" ")

  # "Reduce" the string array into a single hash, and iterate over the hash and substrings
  words.reduce(Hash.new(0)) do |hash, word|
    
    # For each substring, check
    dictionary.each do |check|

      # if the word contains the substring
      hash[check] += 1 if word.include?(check)

    end

    # return the hash
    hash
  end
end
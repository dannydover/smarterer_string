class SmartererString

  # This function takes a string and an array of words to be obfuscated.
  # It returns a modified version of the original string with the applicable
  # letters replaced with asterixis. The applicable words are those that are listed in the
  # provided list of words.
  # The regex in the gsub function matches any whole word that is passed to it as the var 'word'
  
  def self.obfuscate(string, list)
  
    list.each do |word|
      letters_in_word = word.length   
      string.gsub!(/\b(#{word})\b/, '*' * letters_in_word)
    end
    
    return string
  end
  
  # This function takes a string and an array of words to be counted.
  # It returns a new frequency hash which contains the frequency of the given list item
  # in the given string.
  # This function takes the conservative route of splitting the string by anything 
  # non-alpha

  def self.report(string, list)
    
    words = string.split(/[^a-zA-Z]/)
    frequency_hash = Hash.new(0)
    
    words.each do |word| 
      if list.include?(word) 
        frequency_hash[word] += 1
      end
    end
    
    return frequency_hash
  end

end
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  output = (word + ' ') * times
  output = output[0..-2]
end

def start_of_word(word, letter)
  word[0..(letter - 1)]
end

def first_word(string)
  words = string.split
  words[0]
end

def titleize(message)
  output = ''
  words = message.split
  count = words.length
  x = 1
  little_words = ["and", "the", "over"]
  words.each do |word|
    if x == count
      output += word.capitalize
    else
      if (little_words.include?(word) && x != 1)
        output += (word + ' ')
      else
        output += (word.capitalize + ' ')
      end
    x += 1
    end
  end
  output
end

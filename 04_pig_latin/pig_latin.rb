"
def translate(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  if vowels.include?(word[0])
    word + 'ay'
  else
    pos = 0
    word.chars do |i|
      if !(vowels.include?(i))
        pos = pos + 1
      else
        break
      end
    end
    word[pos..] + word[0..(pos - 1)] + 'ay'
  end
end
"




def translate(message)
  vowels = ['a', 'e', 'i', 'o',]
  output = ''
  words = message.split
  total = words.length
  count = 0
  words.each do |word|
    count += 1
    if vowels.include?(word[0])
      if count == total
        output += word + 'ay'
      else
        output += word + 'ay' + ' '
      end
    else
      pos = 0
      word.chars do |i|
        if !(vowels.include?(i))
          pos = pos + 1
        else
          break
        end
      end
      if count == total
        output += word[pos..] + word[0..(pos - 1)] + 'ay'
      else
        output += word[pos..] + word[0..(pos - 1)] + 'ay' + ' '
      end
    end
  end
  output
end

class Book
  attr_accessor :title
  @title = :title.to_s

  def title
    c_title = @title
    words = c_title.split
    new_title = ''
    total = words.length
    count = 0
    bad_words = ['and', 'in', 'the', 'of', 'a', 'an']

    words.each do |word|
      count += 1
      if count == total
        if bad_words.include?(word)
          new_title += word
        else
          new_title += word.capitalize
        end
      else
        if (bad_words.include?(word) && count != 1)
          new_title += (word + ' ')
        else
          new_title += (word.capitalize + ' ')
        end
      end
    end

    @title = new_title

  end

end

class Book
  attr_accessor :title

  def title
    titleize(@title)
  end

private

  def titleize(title)
    title_words = title.capitalize.split(" ")
    title_words.collect { |word| cap(word) }.join(" ")
  end

  def cap(word)
    skip_words.include?(word) ? word : word.capitalize
  end

  def skip_words
    [ "and", "in", "the", "of", "a", "an" ]
  end

end
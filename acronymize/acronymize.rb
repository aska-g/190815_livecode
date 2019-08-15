def acronymize(sentence)
  return '' if sentence == ''

  # split the sentence into words
  words = sentence.split

  # words.map { |word| word[0] }.join.upcase

  letters = words.map do |word|
    word[0].upcase
  end

  letters.join
end

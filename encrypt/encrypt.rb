def encrypt(sentence)
  #having the alphabet into an array
  alphabet = ("a".."z").to_a
  #turn sentence into array of letters
  letters = sentence.split("")

  #create a new array with shifted letters
  new_letters = letters.map do |letter|
  letter.downcase!
    #check for non-letter characters
    if alphabet.include?(letter)
      #if letter, shift
      index = alphabet.index(letter)
      alphabet[index - 3]
    else
      #else, keep unchanged
      letter
    end
  end
  #join the letters back together and upcase
  new_letters.join.upcase
end





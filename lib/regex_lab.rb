def starts_with_a_vowel?(word)
  if word[0].match(/[aeiou]/) != nil
    return true
  else
    return false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/(\bun\w*ing\b)/)
end

def words_five_letters_long(text)
  text.scan(/(\w{5}\s)/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/\A[A-Z]/) && text.match(/\W\z/) && text.match(/\D\z/)
    return true 
  else
    false
end

def valid_phone_number?(phone)
  return true  
end

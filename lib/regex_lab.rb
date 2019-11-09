def starts_with_a_vowel?(word)
  if word[0].match(/[aeiouAEIOU]/) != nil
    return true
  else
    return false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/\A[A-Z]/) && text.match(/\W\z/) && text.match(/\D\z/)
    return true 
  else
    false
  end
end

def valid_phone_number?(phone)
  if phone.match(/\D?+\d{3}+\D?+\d{3}+\D?+\d{4}/) 
    p "digits"
    if phone.match(/\w*/) == nil  
      p "no letters"
      return true 
    end
  else
    return false
  end
end

p words_five_letters_long("I'm just testing this")
p words_five_letters_long("Now there are words with five letters total")
p starts_with_a_vowel?("cakes")
phone_array = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
phone_array.each do |number|
  p valid_phone_number?(number)
end
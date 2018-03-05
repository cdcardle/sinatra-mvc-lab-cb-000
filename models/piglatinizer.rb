class PigLatinizer

  def piglatinize(word)
    case word
    when /^[q][u]/
      word = word[2..-1] + word[0..1] + 'ay'
    when /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ][aieouAEIOU]/
      word = word[1..-1] + word[0] + 'ay'
    when /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ][bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ][aeiouAEIOU]/
      word = word[2..-1] + word[0..1] + 'ay'
    when /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ][bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ][bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/
      word = word[3..-1] + word[0..2] + 'ay'
    when /^[aieouAEIOU]/
      word += 'way'
    else
      raise TypeError, 'Unacceptable Word!'
    end

    word
  end

  def to_pig_latin(phrase)
    array = []
    phrase.split.each do |word|
      array << piglatinize(word)
    end
    array.join(" ")
  end

end


#For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" is added
#too = ootay
#me = emay
#duck = uckday

#When words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end when speaking or writing
#cheers = eerschay
#thanks = anksthay
#school = oolschay

#For words that begin with vowel sounds, one just adds "way" or "yay" to the end (or just "ay").
#eat = eatway
#egg = eggway
#explain = explainway

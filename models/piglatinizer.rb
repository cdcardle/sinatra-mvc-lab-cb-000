class PigLatinizer
  attr_reader :word

  def initialize
  end

  def single_word?
    !@word.strip.include?(" ")
  end

  def piglatinize(word)
    word
    case word
    when /^[bcdfghjklmnpqrstvwxyz][aieou]/
      word = word[1..-1] + word[0] + 'ay'
    when /^[bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz]/
      word = word[2..-1] + word[0..1] + 'ay'
    when /^[aieou]/
      word += 'way'
    end

    word
  end

  def to_pig_latin

  end

end


#For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" is added
#too = ootay
#me = emay
#duck = uckday

#When words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end when speaking or writing
#cheers = eerschay
#thanks = anksthay
#glove = oveglay

#For words that begin with vowel sounds, one just adds "way" or "yay" to the end (or just "ay").
#eat = eatway
#egg = eggway
#explain = explainway

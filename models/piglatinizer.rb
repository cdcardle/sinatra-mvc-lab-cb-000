class PigLatinizer
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def single_word?
    !@word.strip.include?(" ")
  end

  def pig_latinize
    raise TypeError, 'Error! You must enter exactly one English word only!' if !single_word?

    text = @word
    case text
    when /^[bcdfghjklmnpqrstvwxyz][aieou]/
      text.gsub(/^./, '') << 'ay'
    when /^[bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz]/
      text.gsub(/^../, '') << 'ay'
    when /^[aieou]/
      text += 'way'
    end
    
    text
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

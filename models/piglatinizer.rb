class PigLatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end


  def piglatinize
    if word =~ (/\A[aeiou]/i)
    word = word + 'ay'
    elsif word =~ (/\A[^aeiou]/i)
      match = /\A[^aeiou]/i.match(word)
      word = match.post_match + match.to_s + 'ay'
    end
  word
  end
      

  
  
end
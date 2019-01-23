class PigLatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end


  def piglatinize
      self.phrase
  end
      

  
  
end
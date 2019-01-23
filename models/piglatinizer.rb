class PigLatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end


  def piglatinize
    if @phrase=~ /\A[^aeiou]/
      @piglatinized = @phrase[1..0]+"ay"
    else
      "YOYO"
    end
  end
      

  
  
end
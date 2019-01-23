class PigLatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end


  def piglatinize
    case 
    if @phrase=~ /\A[^aeiou]/ && @phrase[1..-1] =~ /\A[aeiou]/
      @piglatinized = @phrase[1..-1]+@phrase[0]+"ay"
    else
      "YOYO"
    end
  end
      

  
  
end
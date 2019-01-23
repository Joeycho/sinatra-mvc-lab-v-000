class PigLatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end


  def piglatinize
    words
    
    if @phrase=~ /\A[^aeiou]/ && @phrase[1..-1] =~ /\A[aeiou]/
      @piglatinized = @phrase[1..-1]+@phrase[0]+"ay"
    elsif @phrase=~ /\A[^aeiou]/ && @phrase[1..-1] =~ /\A[^aeiou]/ && @phrase[2..-1] =~ /\A[aeiou]/
      @piglatinized = @phrase[2..-1]+@phrase[0..1]+"ay"
    elsif @phrase=~ /\A[^aeiou]/ && @phrase[1..-1] =~ /\A[^aeiou]/ && @phrase[2..-1] =~ /\A[^aeiou]/ && @phrase[3..-1] =~ /\A[aeiou]/
      @piglatinized = @phrase[3..-1]+@phrase[0..2]+"way"
    else
      @piglatinized = @phrase + "ay"
    end
    @piglatinized
  end
      

  
  
end
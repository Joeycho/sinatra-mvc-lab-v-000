class PigLatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end


  def piglatinize
    if @phrase.start_with?(/\A[^aeiou]/)
      @piglatinized = @phrase[1..-1]+"ay"
  end
      

  
  
end
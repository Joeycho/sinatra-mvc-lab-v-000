class PigLatinizer
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end


  def piglatinize
    if @phrase =~ (/\A[aeiou]/i)
    @piglatinized = @phrase + 'ay'
    elsif @phrase =~ (/\A[^aeiou]/i)
      match = /\A[^aeiou]/i.match(@phrase)
      @piglatinized = match.post_match + match.to_s + 'ay'
    end
  @piglatinized
  end
      

  
  
end
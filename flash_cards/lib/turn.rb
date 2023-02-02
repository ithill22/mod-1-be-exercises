class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    @guess == card.answer
    #return true if @guess == card.anwer
    #false
    #guess == card.answer ? true : false
  end

  def feedback
    return "Correct!" if correct?
      "Incorrect."
  end
  
end
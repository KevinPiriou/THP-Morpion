class Player
  attr_reader :name, :symbol#, :score

  def initialize (name, symbol)#, score)
    @name = name.upcase
    @symbol = symbol
    #@score = score
  end

end

class Board
  attr_accessor :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3

  def initialize
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    # Initialize all 9 BoardCase
    @A1 = BoardCase.new("a1", " ")
    @A2 = BoardCase.new("a2", " ")
    @A3 = BoardCase.new("a3", " ")
    @B1 = BoardCase.new("b1", " ")
    @B2 = BoardCase.new("b2", " ")
    @B3 = BoardCase.new("b3", " ")
    @C1 = BoardCase.new("c1", " ")
    @C2 = BoardCase.new("c2", " ")
    @C3 = BoardCase.new("c3", " ")
    
  end

    
  def play(player)
    puts "#{player.name}, c'est ton tour! Où veux tu placer ton symbole?".cyan
    choice = gets.chomp
    system('clear')
    case choice
    when "a1"
      @A1.content = player.symbol if @A1.content == " "  
    when "a2"
      @A2.content = player.symbol if @A2.content == " "
    when "a3"
      @A3.content = player.symbol if @A3.content == " "
    when "b1"
      @B1.content = player.symbol if @B1.content == " "
    when "b2"
      @B2.content = player.symbol if @B2.content == " "
    when "b3"
      @B3.content = player.symbol if @B3.content == " "
    when "c1"
      @C1.content = player.symbol if @C1.content == " "
    when "c2"
      @C2.content = player.symbol if @C2.content == " "
    when "c3"
      @C3.content = player.symbol if @C3.content == " "
    else
      puts "Ecris ta reponse sous la forme a1 stp'"
      print ">"
      choice = gets.chomp
    end
  end

 

  def show_board
      puts"           A              B             C        ".yellow
      puts"                   |             |               ".yellow
      puts"                   |             |               ".yellow
      puts" 1         #{@A1.content}       |      #{@B1.content}      |      #{@C1.content}".yellow
      puts"                   |             |               ".yellow
      puts"                   |             |               ".yellow
      puts"      -----------------------------------------  ".yellow
      puts"                   |             |               ".yellow
      puts"                   |             |               ".yellow
      puts" 2         #{@A2.content}       |      #{@B2.content}      |      #{@C2.content}".yellow
      puts"                   |             |               ".yellow
      puts"                   |             |               ".yellow
      puts"      -----------------------------------------  ".yellow
      puts"                   |             |               ".yellow
      puts"                   |             |               ".yellow
      puts" 3         #{@A3.content}       |     #{@B3.content}       |      #{@C3.content}".yellow
      puts"                   |             |               ".yellow
      puts"                   |             |               ".yellow
  end

  def player_win(symbol)
    if (@A1.content == symbol && @A2.content == symbol && @A3.content == symbol) || (@B1.content == symbol && @B2.content == symbol && @B3.content == symbol) || (@C1.content == symbol && @C2.content == symbol && @C3.content == symbol) || (@A1.content == symbol && @B1.content == symbol && @C1.content == symbol) || (@A2.content == symbol && @B2.content == symbol && @C2.content == symbol) || (@A3.content == symbol && @B3.content == symbol && @C3.content == symbol) || (@A1.content == symbol && @B2.content == symbol && @C3.content == symbol) || (@A3.content == symbol && @B2.content == symbol && @C1.content == symbol)
      return true
    else
      return false
    end
  end
end

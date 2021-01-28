


class Game 

  attr_accessor :player_1, :player_2

    def initialize
      system('clear')
      puts "|=====  WELCOME TO TIC TAC TOE  =====|".blue.bold
      puts "|               1 vs 1               |".blue.bold
      puts "|====================================|".blue.bold
      puts "Entrez le nom du premier joueur :".green.bold
      print "> ".green.bold
      @player_1 = Player.new(gets.chomp, "O")
      puts "Entrez le nom du deuxieme joueur :".green.bold
      print "> ".green.bold
      @player_2 = Player.new(gets.chomp, "X")
    end

  def one_game
    system('clear')
    myboard = Board.new
    myboard.show_board
    i = 0
    while i < 9
      myboard.play(player_1)
      myboard.show_board
      i += 1
      if myboard.player_win(player_1.symbol) == true
        puts "#{player_1.name} ta win ✰".green.bold
        puts "#{player_2.name} ta loose".red.bold
      end
      break if myboard.player_win(player_1.symbol) == true
      myboard.play(player_2)
      myboard.show_board
      i += 1
      if myboard.player_win(player_2.symbol) == true
        puts "#{player_2.name} win ✰".green.bold
        puts "#{player_1.name} loose".red.bold
      end
      break if myboard.player_win(player_2.symbol) == true
    end
    if myboard.player_win(player_2.symbol) == false && myboard.player_win(player_1.symbol) == false
      puts "Egalite".yellow
    end
  end

  def new_round
    puts "on se relance une game ? (yes or no)"
    question = gets.chomp
    if question == "yes"
      puts "OK LET'S GO".underline
      one_game
    elsif question == "no"
      puts "OK GOOD BYE".underline
    end
  end
end


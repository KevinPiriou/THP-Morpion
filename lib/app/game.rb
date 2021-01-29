


class Game 

  attr_accessor :player_1, :player_2

    def initialize
      @score_player1 = 0
      @score_player2 = 0
      system("clear")
      puts "|============= ♛".blue.bold+" 🆃 🅸 🅲".green.bold+" ​🆃 🅰 🅲".blue.bold+" ​🆃 🅾 🅴".red.bold+" ♛ =============|".blue.bold
      puts "|                                                 |".blue.bold
      puts "|                   𝘼 𝙂𝘼𝙈𝙀 𝘽𝙔 :                   |".blue.bold
      puts "|                                                 |".blue.bold
      puts "|         ".blue.bold+"▶ Theo".red.bold+"               "+"▶ Frederic".green.bold+"         |".blue.bold
      puts "|                                                 |".blue.bold
      puts "|         ".blue.bold+"▶ Melvin".blue.bold+"             "+"▶ Kevin".cyan.bold+"            |".blue.bold
      puts "|                                                 |".blue.bold
      puts "|=================================================|".blue.bold
      puts "|Nom du premier joueur :                          |".blue.bold
      print "| ▶ ".blue.bold
      @player_1 = Player.new(gets.chomp, "☢".green.bold)
      puts "|                                                 |".blue.bold
      puts "Nom du deuxieme joueur :                          |".blue.bold
      print "| ▶ ".blue.bold
      @player_2 = Player.new(gets.chomp, "✘".red.bold)
      sleep(0.5)
      puts "|=================================================|".blue.bold
      puts "|                                                 |".blue.bold
      puts "|             LE JEU SE JOUE EN 3 ROUND           |".blue.bold
      puts "|                                                 |".blue.bold
      puts "|=================================================|".blue.bold
      sleep(2)
    end#initialize

def one_game
  system("clear")
  myboard = Board.new
  myboard.show_board
  i = 0
  while i < 9
    myboard.play(player_1)
    myboard.show_board
    i += 1
    if myboard.player_win(player_1.symbol) == true
      @score_player1 = @score_player1 + 1
      sleep(0.5)
      puts ""
      puts "𝗦 𝗖 𝗢 𝗥 𝗘 :".blue.bold+"    #{@player_1.name}: #{@score_player1}".yellow.bold+"   vs ".red.bold+" #{@player_2.name}: #{@score_player2}".yellow.bold
      puts ""
      puts "#{player_1.name}  ➟ ➟ ➟ ★ Gagne ce round ★".green.bold
      puts ""
      puts "#{player_2.name}  ➟ ➟ ➟ ★ Perd ce round ★".red.bold
      sleep(5)
    end
    break if myboard.player_win(player_1.symbol) == true
    myboard.play(player_2)
    myboard.show_board
    i += 1
    if myboard.player_win(player_2.symbol) == true
      @score_player2 = @score_player2 + 1
      sleep(0.5)
      puts ""
      puts "𝗦 𝗖 𝗢 𝗥 𝗘 :".blue.bold+"#{@player_1.name}: #{@score_player1}".yellow.bold+" vs".red.bold+" #{@player_2.name}: #{@score_player2}".yellow.bold
      puts ""
      puts "#{player_2.name}  ➟ ➟ ➟ ★ Gagne ce round ★".green.bold
      puts ""
      puts "#{player_1.name}  ➟ ➟ ➟ ★ Perd ce round ★".red.bold
      sleep(5)
    end
    break if myboard.player_win(player_2.symbol) == true
  end
  if myboard.player_win(player_2.symbol) == false && myboard.player_win(player_1.symbol) == false
    puts "  ▛  𝗘 𝗚 𝗔 𝗟 𝗜 𝗧 𝗘  ▜".yellow.bold
  end
end#one_game

def new_round
  puts ""
  puts "Nouveau round !".blue.bold
  system("clear")
  sleep(0.5)
  one_game
end#new_round

def end_game
  system("clear")
  puts ""
  puts "𝗩 𝗢 𝗜 𝗖 𝗜  𝗟 𝗘  𝗦 𝗖 𝗢 𝗥 𝗘:".blue.bold+" #{player_1.name}: #{@score_player1}".yellow.bold+"    vs  ".red.bold+" #{player_2.name}: #{@score_player2}".yellow.bold
  puts ""
  puts "                    ┌─────~~ •✧✧• ~~─────┐".cyan.bold
  puts "                     MERCI D'AVOIR JOUER".cyan.bold
  puts "                    └─────~~ •✧✧• ~~─────┘".cyan.bold
  end
end#end_game



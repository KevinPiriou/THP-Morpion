class Board
  attr_accessor :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3

  def initialize
    @A1 = BoardCase.new("a1", " ")
    @A2 = BoardCase.new("a2", " ")
    @A3 = BoardCase.new("a3", " ")
    @B1 = BoardCase.new("b1", " ")
    @B2 = BoardCase.new("b2", " ")
    @B3 = BoardCase.new("b3", " ")
    @C1 = BoardCase.new("c1", " ")
    @C2 = BoardCase.new("c2", " ")
    @C3 = BoardCase.new("c3", " ")
    end#initialize

    
  def play(player)
    puts ""
    puts ""
    puts "#{player.name}, 𝗼𝘂̀ 𝘀𝗼𝘂𝗵𝗮𝗶𝘁𝗲𝘀 𝘁𝘂 𝗷𝗼𝘂𝗲𝗿 ? (𝗮𝟭,𝗯𝟯,𝗲𝗰𝘁..)".blue
    print "▶ ".blue.bold
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
      puts "𝗘𝗥𝗥𝗢𝗥 : 𝗘𝗻𝘁𝗿𝗲 𝗱𝗲 𝗯𝗼𝗻𝗻𝗲 𝗰𝗼𝗼𝗿𝗱𝗼𝗻𝗻𝗲́𝗲𝘀 (𝗮𝟭 , 𝗯𝟮 , 𝗰𝟯)".red.bold.underline
      play(player)
    end
end#play
 

  def show_board
    puts"           𝗔              𝗕             𝗖        ".cyan.bold
    puts"                   |             |               ".yellow
    puts"                   |             |               ".yellow
    puts" 1".cyan.bold+"         #{@A1.content}       |      #{@B1.content}      |      #{@C1.content}".yellow
    puts"                   |             |               ".yellow
    puts"                   |             |               ".yellow
    puts"      -----------------------------------------  ".yellow
    puts"                   |             |               ".yellow
    puts"                   |             |               ".yellow
    puts" 2".cyan.bold+"         #{@A2.content}       |      #{@B2.content}      |      #{@C2.content}".yellow
    puts"                   |             |               ".yellow
    puts"                   |             |               ".yellow
    puts"      -----------------------------------------  ".yellow
    puts"                   |             |               ".yellow
    puts"                   |             |               ".yellow
    puts" 3".cyan.bold+"         #{@A3.content}       |     #{@B3.content}       |      #{@C3.content}".yellow
    puts"                   |             |               ".yellow
    puts"                   |             |               ".yellow
  end#show_board

  def player_win(symbol)
    if (@A1.content == symbol && @A2.content == symbol && @A3.content == symbol) || (@B1.content == symbol && @B2.content == symbol && @B3.content == symbol) || (@C1.content == symbol && @C2.content == symbol && @C3.content == symbol) || (@A1.content == symbol && @B1.content == symbol && @C1.content == symbol) || (@A2.content == symbol && @B2.content == symbol && @C2.content == symbol) || (@A3.content == symbol && @B3.content == symbol && @C3.content == symbol) || (@A1.content == symbol && @B2.content == symbol && @C3.content == symbol) || (@A3.content == symbol && @B2.content == symbol && @C1.content == symbol)
      return true
    else
      return false
    end
  end#player_win
end#class

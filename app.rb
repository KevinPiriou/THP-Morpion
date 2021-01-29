require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/game'
require 'app/board'
require 'app/boardcase'

morpion = Game.new
morpion.one_game
morpion.new_round
morpion.one_game
morpion.end_game






#COLORIZE:
#.blue
#.yellow
#.red
#.green
#.cyan
#.bold = gras
#.underline = souligne













































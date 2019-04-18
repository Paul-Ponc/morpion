require 'bundler'
Bundler.require

require_relative 'lib/game/board'
require_relative 'lib/game/start'


hello = Start.new
plateau = Board.new

def begine
    hello = Start.new
    plateau = Board.new

    hello.welcome_player
    plateau.create_case   ##init le hash

    9.times do
    hello.turn              ## compteur de tour
    if  (hello.which_player? == false)      ## savoir si pair ou impair
            puts "#{$player1_name} a toi de jouer"
            plateau.check_winner
            plateau.show_one_case 
            plateau.puts_pion_x
    else puts "#{$player2_name} a toi de jouer"
        plateau.check_winner
        plateau.show_one_case 
        plateau.puts_pion_o
        end        
    end
end
 
begine
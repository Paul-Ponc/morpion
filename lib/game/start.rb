class Start
    attr_accessor :player1, :player2, :turn
    
    def initialize()
        @player1 = player1
        @player2 = player2
        @turn = 0
    end

    def welcome_player                         ###take names playeurs
        puts "\033[31m ||| Welcome to Morpion |||"
        puts " \033[31m          Humans          "
        puts ""
        puts "\033[31menter name of playeur1..."
        $player1_name = gets.chomp
        puts "enter name of playeur2..."
        $player2_name = gets.chomp
    end

    def turn
        if (@turn == 0)
            puts "\033[38;5;220mle jeu commence"
            @turn += 1
        else puts "Le tour #{@turn}"
            @turn += 1
        end
    end

    def which_player?
        turn_is_pair = @turn.even?
    end

end
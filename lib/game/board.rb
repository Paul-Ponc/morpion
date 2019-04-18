class Board
    $one_case
attr_accessor :turn

    def initialize
        @turn = 0
    end

    def create_case
    $one_case = {
        'A1' => ' ',
        'A2' => ' ',
        'A3' => ' ',
        'B1' => ' ',
        'B2' => ' ',
        'B3' => ' ',
        'C1' => ' ',
        'C2' => ' ',
        'C3' => ' '
    }
    end

    def show_one_case
         puts ""
       puts "#{$one_case['A1']}|#{$one_case['A2']}|#{$one_case['A3']}"
       puts "-----"
       puts "#{$one_case['B1']}|#{$one_case['B2']}|#{$one_case['B3']}"
       puts "-----"
       puts "#{$one_case['C1']}|#{$one_case['C2']}|#{$one_case['C3']}"
       puts ""
    end

    def puts_pion_x 
    input = gets.chomp.capitalize
        if $one_case.has_key?(input) && $one_case[input] == ' '
        $one_case[input] = 'X'
        else puts "tu dois rentrer a1 etc.."
            puts_pion_x
        end
    end

    def puts_pion_o
    input = gets.chomp.capitalize
        if $one_case.has_key?(input) && $one_case[input] == ' '
            $one_case[input] = 'O'
        else puts "tu dois rentrer a1 etc.."
            puts_pion_o
        end
    end

    def check_winner
        if $one_case['A1'=>'X' , 'A2' => 'X' , 'A3' => 'X']
            puts "tu ags gaggegge"
        end
    end
   
    def turn
        if (@turn == 0)
            puts "le jeu commence"
            @turn += 1
        else puts "Le tour #{@turn}"
            @turn += 1
        end
    end
end

class TicTacToe
    # def initialize
        @done = false

        # @board = [
        #     [nil, nil, nil],
        #     [nil, nil, nil],
        #     [nil, nil, nil]
        # ]

        @board = [
            [" ", " ", " "],
            [" ", " ", " "],
            [" ", " ", " "]
        ]

        # @board = [
        #     ["x", " ", " "],
        #     [" ", "x", " "],
        #     [" ", " ", "x"]
        # ]

    # end


    def self.printBoard
        puts "       | column 1 | column 2 | column 3 "
        puts " row 1 |       #{@board[0][0]}  |       #{@board[0][1]}  |       #{@board[0][2]} "
        puts " row 2 |       #{@board[1][0]}  |       #{@board[1][1]}  |       #{@board[1][2]} "
        puts " row 3 |       #{@board[2][0]}  |       #{@board[2][1]}  |       #{@board[2][2]} "
 


        # puts "row 1: #{@board[0]}\n"
        # puts "row 2: #{@board[1]}\n"
        # puts "row 3: #{@board[2]}\n"

    end


    # @board = [
    #     [00, 01, 02],
    #     [10, 11, 12],
    #     [20, 21, 22]
    # ]

    
    def self.checkWinner
        # @board.each do |n|
        #     if n.include?(" ")
        #         return
        #     end
        # end

        # check columns
        if @board[0][0] != " " && @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]
            puts "\n#{@board[0][0]} wins!"
            @done = true
        elsif @board[0][1] != " " && @board[0][1] == @board [1][1] && @board[1][1] == @board[2][1]
            puts "\n#{@board[0][1]} wins!"
            @done = true
        elsif @board[0][2] != " " && @board[0][2] == @board [1][2] && @board[1][2] == @board[2][2]
            puts "\n#{@board[0][2]} wins!"
            @done = true

        # check rows
        elsif @board[0][0] != " " && @board[0][0] == @board [0][1] && @board[0][1] == @board[0][2]
            puts "\n#{@board[0][0]} wins!"
            @done = true

        elsif @board[1][0] != " " && @board[1][0] == @board [1][1] && @board[1][1] == @board[1][2]
            puts "\n#{@board[1][0]} wins!"
            @done = true

        elsif @board[2][0] != " " && @board[2][0] == @board [2][1] && @board[2][1] == @board[2][2]
            puts "\n#{@board[2][0]} wins!"
            @done = true

        # check diagonals
        elsif @board[0][0] != " " && @board[0][0] == @board [1][1] && @board[1][1] == @board[2][2]
            puts "\n#{@board[0][0]} wins!"
            @done = true

        elsif @board[0][2] != " " && @board[0][2] == @board [1][1] && @board[1][1] == @board[2][0]
            puts "\n#{@board[0][2]} wins!"
            @done = true
        end
    end



    def self.gameDone
        TicTacToe.checkWinner
        # unless @done == true
        #     @board.any? do |n|
        #         if !n.include?(" ")
        #             @done = true
        #         end
        #     end
        # end
        unless @done == true
            if !@board.flatten.include?(" ")
                puts "\nit's a tie"
                @done = true
            end
        end
        @done
    end



    def self.eachTurn

        # TicTacToe.gameDone

        while @done == false
            puts "\n\nBoard: "
            TicTacToe.printBoard
            puts "\nEnter x or o\n"
            response = gets.chomp

            puts "\nWhere do you want to put this? (row)\n"
            row = gets.chomp.to_i - 1

            puts "\nWhere do you want to put this? (column)\n\n"
            column = gets.chomp.to_i - 1

            @board[row][column] = response
            
            TicTacToe.gameDone
        end

        TicTacToe.printBoard

    end


    TicTacToe.eachTurn



end
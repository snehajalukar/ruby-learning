class TicTacToe
    def initialize
        @done = false
        @board = [
            [" ", " ", " "],
            [" ", " ", " "],
            [" ", " ", " "]
        ]
    end

    def printBoard
        puts "       | column 1 | column 2 | column 3 "
        puts " row 1 |       #{@board[0][0]}  |       #{@board[0][1]}  |       #{@board[0][2]} "
        puts " row 2 |       #{@board[1][0]}  |       #{@board[1][1]}  |       #{@board[1][2]} "
        puts " row 3 |       #{@board[2][0]}  |       #{@board[2][1]}  |       #{@board[2][2]} "
    end

    def checkWinner
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

    def gameDone
        checkWinner
        unless @done == true
            if !@board.flatten.include?(" ")
                puts "\nit's a tie"
                @done = true
            end
        end
        @done
    end

    def checkResponse
        if (@response != "x" && @response != "o") 
            puts "retry, input x or o"
        end
    end


    def eachTurn
        gameDone
        while @done == false
            puts "\n\nBoard: "
            printBoard
            
            puts "\nEnter x or o\n"
            @response = gets.chomp
            # p @response != "x" && @response != "o"
            checkResponse

            until (@response == "x" || @response == "o")
                @response = gets.chomp
                checkResponse
            end

            puts "\nWhere do you want to put this? (row)\n"
            row = gets.chomp.to_i - 1
    
            puts "\nWhere do you want to put this? (column)\n\n"
            column = gets.chomp.to_i - 1
        

            if (@board[row][column] == "x" || @board[row][column] == "o")
                until (@board[row][column] != "x" && @board[row][column] != "o")
                    puts "\nThat spot is taken! Try again...\n"
                    puts "\nWhere do you want to put this? (row)\n"
                    row = gets.chomp.to_i - 1
            
                    puts "\nWhere do you want to put this? (column)\n\n"
                    column = gets.chomp.to_i - 1
                end
            end

            @board[row][column] = @response unless (@board[row][column] == "x" || @board[row][column] == "o")
            

            gameDone
        end
        printBoard
    end
end

game = TicTacToe.new

game.eachTurn

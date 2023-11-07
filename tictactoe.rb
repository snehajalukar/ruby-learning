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
            printBoard
            puts "\n#{@board[0][0]} wins!"
            @done = true
        elsif @board[0][1] != " " && @board[0][1] == @board [1][1] && @board[1][1] == @board[2][1]
            printBoard
            puts "\n#{@board[0][1]} wins!"
            @done = true
        elsif @board[0][2] != " " && @board[0][2] == @board [1][2] && @board[1][2] == @board[2][2]
            printBoard
            puts "\n#{@board[0][2]} wins!"
            @done = true

        # check rows
        elsif @board[0][0] != " " && @board[0][0] == @board [0][1] && @board[0][1] == @board[0][2]
            printBoard
            puts "\n#{@board[0][0]} wins!"
            @done = true

        elsif @board[1][0] != " " && @board[1][0] == @board [1][1] && @board[1][1] == @board[1][2]
            printBoard
            puts "\n#{@board[1][0]} wins!"
            @done = true

        elsif @board[2][0] != " " && @board[2][0] == @board [2][1] && @board[2][1] == @board[2][2]
            printBoard
            puts "\n#{@board[2][0]} wins!"
            @done = true

        # check diagonals
        elsif @board[0][0] != " " && @board[0][0] == @board [1][1] && @board[1][1] == @board[2][2]
            printBoard
            puts "\n#{@board[0][0]} wins!"
            @done = true

        elsif @board[0][2] != " " && @board[0][2] == @board [1][1] && @board[1][1] == @board[2][0]
            printBoard
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

    def inputPosition
        puts "\nWhere do you want to put this? (row)\n"
        @row = gets.chomp.to_i - 1

        puts "\nWhere do you want to put this? (column)\n\n"
        @column = gets.chomp.to_i - 1
    end

    def eachTurn
        gameDone
        while @done == false
            puts "\n\nBoard: "
            printBoard


            # Player 1 / X
            puts "\nPlayer 1's Turn! Where would you like X to go?"
            inputPosition
            if (@board[@row][@column] == "x" || @board[@row][@column] == "o")
                until (@board[@row][@column] != "x" && @board[@row][@column] != "o")
                    puts "\nThat spot is taken! Try again...\n"

                    inputPosition
                end
            end

            @board[@row][@column] = "x" unless (@board[@row][@column] == "x" || @board[@row][@column] == "o")
            gameDone
            printBoard


            # Player 2 / O
            puts "\Player 2's Turn! Where would you like O to go?"
            inputPosition
            if (@board[@row][@column] == "x" || @board[@row][@column] == "o")
                until (@board[@row][@column] != "x" && @board[@row][@column] != "o")
                    puts "\nThat spot is taken! Try again...\n"

                    inputPosition
                end
            end

            @board[@row][@column] = "o" unless (@board[@row][@column] == "x" || @board[@row][@column] == "o")
            gameDone
            printBoard





        end


    end

end

game = TicTacToe.new

game.eachTurn

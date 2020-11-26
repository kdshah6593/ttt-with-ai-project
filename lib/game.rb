class Game

    attr_accessor :board, :player_1, :player_2

    WIN_COMBINATIONS = [
        [0,1,2], #Top Row
        [3,4,5], #Middle Row
        [6,7,8], #Bottom Row
        [0,3,6], #Left Column
        [1,4,7], #Center Column
        [2,5,8], #Right Column
        [0,4,8], #Left Diagonal
        [2,4,6] #Right Diagonal
    ]

    def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
        @board = board
        @player_1 = player_1
        @player_2 = player_2
    end

    def current_player
        board.turn_count.even? ? self.player_1 : self.player_2
    end

    def won?
        result = false
        WIN_COMBINATIONS.each do |combination|
            position1 = self.board.cells[combination[0]]
            position2 = self.board.cells[combination[1]]
            position3 = self.board.cells[combination[2]]

            if position1 == "X" && position2 == "X" && position3 == "X"
                result = combination
            elsif position1 == "O" && position2 == "O" && position3 == "O"
                result = combination
            end
        end
        result
    end

    def draw?
        self.board.full? == true && self.won? == false ? true : false
    end

    def over?
        self.draw? == true || self.won? != false ? true : false
    end

    def winner
        win_player = self.won?
        self.board.cells[win_player[0]] if self.won? != false
    end

    def turn
        player = self.current_player
        puts "'#{player.token}' choose a position 1-9:"
        input = player.move
        if self.board.valid_move?(input) == true
            self.board.update(input, player)
        else
            turn
        end
    end

    def play
    
        until self.over? == true
            turn
        end

        if self.won?
            puts "Congratulations #{winner}!"
        elsif self.draw?
            puts "Cat's Game!"
        end
    end


end
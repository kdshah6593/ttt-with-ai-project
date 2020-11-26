class Board

    attr_reader :cells 

    def initialize
        self.reset!
    end

    def cells=(cells)
        @cells = cells 
    end

    def reset!
        @cells = Array.new(9, " ")
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def position(input)
        index = input.to_i - 1
        self.cells[index]
    end

    def update(input, player)
        index = input.to_i - 1
        self.cells[index] = player.token
    end

    def full?
        @cells.all? {|position| position == "X" || position == "O"}
    end

    def turn_count
        @cells.count {|position| position == "X" || position == "O"}
    end

    def taken?(input)
        self.position(input) == "X" || self.position(input) == "O" ? true : false
    end

    def valid_move?(input)
        if (input.to_i > 0 && input.to_i <= 9) && self.taken?(input) == false
            true
        else
            false
        end
    end
end
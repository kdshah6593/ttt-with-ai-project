module Players
    class Computer < Player

        def move(board = nil)
            computer_move = rand(1..9).to_s
            #improve the logic of this
            # computer_move.to_s
        end

    end
end


#how to account for if a move is not valid? will run through same logic and end up looping endlessly. 

# if self.board.turn_count == 0
#     computer_move = [1,3,7,9].sample
# elsif self.board.turn_count == 1 && self.board.taken?(5) == false
#     computer_move = 5
# elsif self.board.turn_count == 1 && self.board.taken?(5) == true
#     computer_move = [1,3,7,9].sample
# elsif self.board.turn_count == 2 && (self.board.taken?(1) == true || self.board.taken?(3) == true)
#     computer_move = 8
# elsif self.board.turn_count == 2 && (self.board.taken?(7) == true || self.board.taken?(9) == true)
#     computer_move = 2
# elsif self.board.turn_count == 3 && self.board.taken?(1) == true
#     if self.board.taken?(2) == true
#         computer_move = 3
#     elsif self.board.taken?(3) == true
#         computer_move = 2
#     elsif self.board.taken?(4) == true
#         computer_move = 7
#     elsif self.board.taken?(6) == true
#         computer_move = [2,3,8,9].sample
#     elsif self.board.taken?(7) == true
#         computer_move = 4
#     elsif self.board.taken?(8) == true
#         computer_move = [4,6,7,9].sample
#     elsif self.board.taken?(9) == true
#         computer_move = [2,3,4,6,7,8].sample
#     end
# elsif self.board.turn_count == 3 && self.board.taken?(3) == true
#     if self.board.taken?(2) == true
#         computer_move = 1 
#     elsif self.board.taken?(1) == true
#         computer_move = 2
#     elsif self.board.taken?(4) == true
#         computer_move = [1,2,7,8].sample
#     elsif self.board.taken?(6) == true
#         computer_move = 9
#     elsif self.board.taken?(7) == true
#         computer_move = [1,2,4,6,8,9].sample
#     elsif self.board.taken?(8) == true 
#         computer_move = [4,6,7,9].sample
#     elsif self.board.taken?(9) == true
#         computer_move = 6
#     end
# elsif self.board.turn_count == 3 && self.board.taken?(7) == true
#     if self.board.taken?(2) == true
#         computer_move = [1,3,4,6].sample
#     elsif self.board.taken?(3) == true
#         computer_move = [1,2,4,6,8,9].sample
#     elsif self.board.taken?(4) == true
#         computer_move = 1
#     elsif self.board.taken?(6) == true
#         computer_move = [2,3,8,9].sample
#     elsif self.board.taken?(1) == true
#         computer_move = 4
#     elsif self.board.taken?(8) == true
#         computer_move = 9
#     elsif self.board.taken?(9) == true
#         computer_move = 8
#     end
# elsif self.board.turn_count == 3 && self.board.taken?(9) == true
#     if self.board.taken?(2) == true
#         computer_move = [1,3,4,6].sample
#     elsif self.board.taken?(3) == true
#         computer_move = 6
#     elsif self.board.taken?(4) == true
#         computer_move = [1,2,7,8].sample
#     elsif self.board.taken?(6) == true
#         computer_move = 3
#     elsif self.board.taken?(7) == true
#         computer_move = 8
#     elsif self.board.taken?(8) == true
#         computer_move = 7
#     elsif self.board.taken?(1) == true
#         computer_move = [2,3,4,6,7,8].sample
#     end
#     #code up until here is good and shouldn't cause break or looping issue with invalid moves
# elsif self.board.turn_count == 4
#     if game.last_move == 4
#         computer_move = 6
#     elsif game.last_move == 6
#         computer_move = 4
#     elsif game.last_move == 7
#         computer_move = 3
#     elsif game.last_move == 9
#         computer_move = 1
#     else
#         computer_move = rand(1..9)
#     end
# elsif self.board.turn_count == 5
#     if game.last_move == 4
#         computer_move = 6
#     elsif game.last_move == 6
#         computer_move = 4
#     elsif game.last_move == 7
#         computer_move = 3
#     elsif game.last_move == 9
#         computer_move = 1
#     else
#         computer_move = rand(1..9).to_s
#     end
# elsif self.board.turn_count == 6
#     if game.last_move == 1
#         computer_move = 9
#     elsif game.last_move == 2
#         computer_move = 8
#     elsif game.last_move == 3
#         computer_move = 7
#     elsif game.last_move == 4
#         computer_move = 6
#     elsif game.last_move == 7
#         computer_move = 3
#     elsif game.last_move == 8
#         computer_move = 2
#     elsif game.last_move == 9
#         computer_move = 1
#     end
# else
#     computer_move = rand(1..9)
# end
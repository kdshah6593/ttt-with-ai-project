module Players
    class Computer < Player

        def move(board = nil)
            computer_move = rand(1..9).to_s
            #improve the logic of this
        end

    end
end




#use the self.board.taken? method
#if turn 1, go middle
#if turn 2, go anywhere
#if turn 3, 

# computer_move = nil
# if self.board.turn_count == 0 && self.board.taken?(5) == false
#     computer_move = 5
# elsif self.board.turn_count == 1 && self.board.taken?(5) == false
#     computer_move = 5
# elsif self.board.turn_count == 2 && (self.board.taken?(2) == true || self.board.taken?(4) == true || self.board.taken?(6) == true || self.board.taken?(8) == true)
#     computer_move = [1,3,7,9].sample
# elsif self.board.turn_count == 2 && (self.board.taken?(1) == true || self.board.taken?(3) == true || self.board.taken?(7) == true || self.board.taken?(9) == true)
#     computer_move = [1,2,3,4,6,7,8,9]
# elsif



# if self.board.turn_count == 1 && self.board.taken?(5) == false
#     computer_move = 5
# elsif self.board.turn_count == 1 && self.board.taken?(5) == true
#     computer_move = [1,3,7,9].sample
# elsif self.board.turn_count == 3 || self.board.turn_count == 5
#     if self.board.taken?(1)
#         if self.board.taken?(3)
#             computer_move = 7
#         elsif self.board.taken?(7)
#             computer_move = 3
#         elsif self.board.taken?(9)
#             computer_move = [3,7].sample
#         end
#     elsif self.board.taken?(2)
#         computer_move = 8
#     elsif self.board.taken?(3)
#         if self.board.taken?(7)
#             computer_move = [1,9].sample
#         else
#             computer_move = 7
#         end
#     elsif self.board.taken?(4)
#         computer_move = 6
#     elsif self.board.taken?(6)
#         computer_move = 4
#     elsif self.board.taken?(7)
#         if self.board.taken?(3)
#             computer_move = [1,9].sample
#         else
#             computer_move = 3
#         end
#     elsif self.board.taken?(8)
#         computer_move = 2
#     elsif self.board.taken?(9)
#         if self.board.taken?(1)
#             computer_move = [3,7].sample
#         else
#             computer_move = 1
#         end
#     end
# end
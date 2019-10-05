# def is_winner? 

#     new = [1, 3]

#     win_conditions = [
#         [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9],
#         [1, 5, 9], [3, 5, 7]
#     ] 

    
#     win_conditions.each do |arr|
#         if arr == new 
#             return true
#         end
#     end

#     return false
# end

# puts is_winner? == false

# def is_winner? 
#     num = [1, 2, 3, 9, 5]

#     win_conditions = [
#         [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9],
#         [1, 5, 9], [3, 5, 7]
#     ] 

#     if num.length >= 3 && num != nil
#         win_conditions.each do |arr|
#             if (arr-num).empty? 
#                 puts (arr-num)
#             else 
#                 puts (arr-num)
#             end
#         end
#     else
#         puts 'nope'
#     end
# end

# is_winner?

puts ([1, 2, 3] - [1, 2, 4]).empty?
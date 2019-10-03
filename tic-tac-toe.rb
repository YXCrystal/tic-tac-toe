class Game

    board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    attr_reader :name, :symbol, :tiles
    def initialize(player, symbol)
        @symbol = symbol

        puts "What is player #{player}'s name?"
        @name = gets.chomp
        puts "#{name} is #{symbol}"
        puts "---------------------------------"

        
        
    end

    def beginf
        @tiles = []

        @rows = {
            first_row: '__1__|__2__|__3__',
            second_row: '__4__|__5__|__6__',
            third_row: '  7  |  8  |  9  '
        }
        
        @rows.each do |key, value| puts value end

        puts "#{name}, type the number corresponding to the spot you want to place your tile"
        @tiles.push(gets.chomp)
        

    end
end


player_one = Game.new('one', 'X')
player_two = Game.new('two', 'O')

puts player_one.beginf
puts player_one.tiles

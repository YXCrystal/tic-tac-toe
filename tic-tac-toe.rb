class Game
    @@rows = {
            first_row: '__1__|__2__|__3__',
            second_row: '__4__|__5__|__6__',
            third_row: '  7  |  8  |  9  '
        }

    attr_reader :name, :symbol, :tiles
    def initialize(player, symbol, tiles)
        @symbol = symbol
        @tiles = tiles

        puts "What is player #{player}'s name?"
        @name = gets.chomp.upcase
        puts "#{name} is #{symbol}"
        puts "---------------------------------"

        
        
    end

    def setup
        
        @@rows.each do |key, value| puts value end

        puts "#{name}'S TURN!"
        puts "Please enter the number corresponding to the spot you want to place your tile"
        
        answer = gets.chomp

        until /^\d{1}$/.match(answer) != nil && is_occupied?(answer)
            if /\d/.match(answer) == nil
                puts "Please enter a number only"
                answer = gets.chomp
            elsif answer.to_f > 9
                puts "Please enter a number on the board"
                answer = gets.chomp
            elsif !is_occupied?(answer)
                puts 'Please enter an available number on the board'
                answer = gets.chomp
            end
        end
    
        @tiles.push(answer)

    end

    def replace
        @tiles.each do |tile|
            @@rows.each do |key, value| 
                if value.include? tile
                    value.sub!(tile, @symbol)
                end
            end
        end

        @@rows.each do |key, value| puts value end
        puts "---------------------------------"
    end 

    def is_occupied? num

        numbers = ''

        @@rows.each do |key, value|
            numbers += value    
        end

        if numbers.include? num
            return true
        else 
            return false
        end
    end

    def is_winner? 

        win_conditions = [
            ['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9'], ['1', '4', '7'], ['2', '5', '8'], ['3', '6', '9'],
            ['1', '5', '9'], ['3', '5', '7']
        ] 

        if @tiles.length >= 3
            win_conditions.each do |arr|
                if (arr - @tiles).empty?
                    return true
                end
            end
        end
    end
end


player_one = Game.new('one', 'X', [])
player_two = Game.new('two', 'O', [])

counter = 0

loop do
    player_one.setup
    player_one.replace
    counter += 1
    break if player_one.is_winner? == true || player_one.tiles.length == 5
    player_two.setup
    player_two.replace
    counter += 1
    break if player_two.is_winner? == true 
end

if player_one.is_winner? == true
    puts "#{player_one.name} has won!"
elsif player_two.is_winner? == true
    puts "#{player_two.name} has won!"
else
    puts "It is a tie!"
end
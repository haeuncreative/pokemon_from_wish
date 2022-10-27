require "../moves/move.rb"
require "../types/type_hierarchy.rb"

class Pokemon

    def initialize(name, type, level)
        @name = name
        @level = level
        @hp = 100 * @level
        @move_set = Array.new
    end


    def add_move(move_name, type, damage)
        if @move_set.size == 4
            raise 'delete move first'
        elsif damage > @level * 10.5
            raise 'move level too high'
        else
            @move_set << Move.new(move_name, type, damage)
            return "#{@name} has successfully learned #{move_name}!"
        end
    end

    def make_move
        p 'make a move'
        p move_set
        move = gets.chomp
        attack = @move_set[move]
    end

    def attacked(attack_val)
        @hp -= attack_val
    end

    def fainted?
        if @hp <= 0
            puts "#{@name} has fainted!"
            return true 
        end
    end


    private
    attr_writer :level
end
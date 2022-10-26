class Pokemon

    def initialize(name, level)
        @name = name
        @level = level
        @hp = 100 * @level
        @move_set = Hash.new(0)
    end


    def add_move(move_name, attack_val)
        if @move_set.size == 4
            raise 'delete move first'
        elsif attack_val > @level * 10.5
            raise 'move level too high'
        else
            @move_set[move_name] = attack_val
            return "#{@name} has successfully learned #{move_name}!"
        end
    end

    def make_move(opponent)
        p 'make a move'
        p move_set
        move = gets.chomp
        attack = @move_set[move]
        opponent.attacked(attack)
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
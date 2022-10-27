require_relative "./moves/move.rb"
require_relative "./pokemon_beings/pokemon.rb"
# require_relative "type_hierarchy"

class Battle
    # extend TypeHierarchy

    def initialize(poke1, poke2)
       @poke1 = poke1
       @poke2 = poke2
       @current_poke = @poke1
       @opponent_poke = @poke2
    end

    def switch_turns!
        if @current_poke = @poke1
            @current_poke = @poke2
            @opponent_poke = @poke1
        else
            @current_poke = @poke1
            @opponent_poke = @poke2
        end
    end

    def battle
        until @poke1.fainted? || @poke2.fainted?
            play_turn
            switch_turns!
        end
        if @poke1.fainted?
            return "#{@poke2} won!"
        else
            return "#{@poke1} won!"
        end
    end

    def play_turn
        # import TypeHierarchy
        puts "It's #{@current_poke}'s turn!"
        move = @current_poke.make_move(@opponent_poke)
        if move.super_effective?(move.type, @opponent_poke.type)
            @opponent_poke.attacked(move.damage * 2)
            puts "#{@opponent_poke.name} lost #{move.damage * 2} HP! It was super effective!"
        elsif move.not_very_effective?(move.type, @opponent_poke.type)
            @opponent_poke.attacked(move.damage * 0.5)
            puts "#{@opponent_poke.name} lost #{move.damage * 2} HP, it was not very effective..."
        elsif move.futile?(move.type, @opponent_poke.type)
            @opponent_poke.attacked(move.damage * 0)
            puts "#{@move.name} had no effect..."
        else
            @opponent_poke.attacked(move.damage)
            puts "#{@opponent_poke.name} was hit! They lost #{move.damage} HP."
        end
    end


        

end

torchic = Pokemon.new('Torchic', :Fire, '10')
torchic.add_move('Ember', :Fire, 30)
torchic.add_move('Scratch', :Normal, 10)
torchic.add_move('Punch', :Normal, 20)
torchic.add_move('Peck', :Flying, 25)

turtwig = Pokemon.new('Turtwig', :Grass, '10')
turtwig.add_move('Razor Leaf', :Grass, 30)
turtwig.add_move('Tackle', :Normal, 10)
turtwig.add_move('Stomp', :Normal, 20)
turtwig.add_move('Mud Slap', :Ground, 25)


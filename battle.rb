require "./types/type_hierarchy.rb"
require "./pokemon_beings/pokemon.rb"

class Battle

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

    def play_turn
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
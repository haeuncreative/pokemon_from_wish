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
        @current_poke.make_move(@opponent_poke)
        

end
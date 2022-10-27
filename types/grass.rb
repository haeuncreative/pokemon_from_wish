require_relative 'pokemon'

class Grass < Pokemon
    def initialize(name, level)
        super
        @type = :Grass
    end
end
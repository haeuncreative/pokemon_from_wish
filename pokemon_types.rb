require_relative 'pokemon'

class Water < Pokemon
    def initialize(name, level)
        super
        @type = :Water
    end
end

class Grass < Pokemon
    def initialize(name, level)
        super
        @type = :Grass
    end
end

class Fire < Pokemon
    def initialize(name, level)
        super
        @type = :Fire
    end
end
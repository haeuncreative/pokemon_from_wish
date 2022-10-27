require_relative 'pokemon'

class Fire < Pokemon
    def initialize(name, level)
        super
        @type = :Fire
    end
end

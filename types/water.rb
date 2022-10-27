require_relative 'pokemon'

class Water < Pokemon
    def initialize(name, level)
        super
        @type = :Water
    end
end
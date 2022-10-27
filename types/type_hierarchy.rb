module TypeHierarchy

    def super_effective?(type1, type2)
        type_hierarchy = {
            :Normal => [],
            :Fire => [:Grass, :Ice, :Bug, :Steel],
            :Water => [:Fire, :Ground, :Rock],
            :Grass => [:Water, :Ground, :Rock],
            :Electric => [:Water, :Flying],
            :Ice => [:Grass, :Ground, :Flying, :Dragon],
            :Fighting => [:Normal, :Ice, :Rock, :Dark, :Steel],
            :Poison => [:Grass],
            :Ground => [:Fire, :Electric, :Poison, :Rock, :Steel],
            :Flying => [:Grass, :Fighting , :Bug],
            :Psychic => [:Fighting , :Poison],
            :Bug => [:Grass, :Psychic, :Dark],
            :Rock => [:Fire, :Ice, :Flying, :Bug],
            :Ghost => [:Psychic, :Ghost],
            :Dragon => [:Dragon],
            :Dark => [:Psychic, :Ghost],
            :Steel => [:Ice, :Rock]
        }
        if type_hierarchy[type1].include?(type2)
            return true
        else
            return false
        end

    end

    def not_very_effective?
        type_hierarchy = {
            :Normal => [:Rock, :Steel],
            :Fire => [:Fire, :Water, :Rock, :Dragon],
            :Water => [:Water, :Grass, :Dragon],
            :Grass => [:Fire, :Grass, :Poison, :Flying, :Bug, :Dragon, :Steel],
            :Electric => [:Grass, :Electric, :Dragon],
            :Ice => [:Fire, :Water, :Ice, :Steel],
            :Fighting => [:Poison, :Flying, :Psychic, :Bug],
            :Poison => [:Poison, :Ground, :Rock, :Ghost],
            :Ground => [:Grass, :Bug],
            :Flying => [:Electric, :Rock, :Steel],
            :Psychic => [:Psychic, :Steel],
            :Bug => [:Fire, :Fighting, :Poison, :Flying, :Ghost, :Steel],
            :Rock => [:Fighting , :Ground, :Steel],
            :Ghost => [:Dark],
            :Dragon => [:Steel],
            :Dark => [:Fighting , :Dark],
            :Steel => [:Fire, :Water, :Electric, :Steel]
        }

        if type_hierarchy[type1].include?(type2)
            return true
        else
            return false
        end
    end

    def futile?
        type_hierarchy = {
            :Normal => [:Ghost],
            :Fire => [],
            :Water => [],
            :Grass => [],
            :Electric => [:Ground],
            :Ice => [],
            :Fighting => [:Ghost],
            :Poison => [:Steel],
            :Ground => [:Flying],
            :Flying => [],
            :Psychic => [:Dark],
            :Bug => [],
            :Rock => [],
            :Ghost => [:Normal],
            :Dragon => [],
            :Dark => [],
            :Steel => []
        }
        if type_hierarchy[type1].include?(type2)
            return true
        else
            return false
        end
    end
end
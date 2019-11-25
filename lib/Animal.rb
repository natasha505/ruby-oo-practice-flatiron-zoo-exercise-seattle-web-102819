class Animal

    attr_reader :nickname, :species, :zoo
    attr_accessor :weight

    @@all = []

    def initialize(nickname, weight, species, zoo)
        @nickname = nickname
        @weight = weight
        @species = species
        @zoo = zoo
        @@all << self
    end 

    def self.all
        @@all
    end

#   takes in species --> [] of animals
    def self.find_by_species(spec)
        @@all.select { |animal| animal.species == spec}
    end 

end

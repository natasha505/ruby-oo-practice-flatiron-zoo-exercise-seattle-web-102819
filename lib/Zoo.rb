class Zoo

    attr_accessor :location, :name
    

    @@all = []

    def initialize(location, name)
        @location = location
        @name = name
        @animals = []
        @@all << self
    end 

    def self.all
        @@all
    end 

#   all animals in zoo
#   zoo --> animals
    def animals 
        Animal.all.select {|animal| animal.zoo == self}
    end 

    def add_animal(nickname, weight, species)
        Animal.new(nickname, weight, species, self)
    end 

#   return [] of all species at that zoo. uniq
#   zoo  --->  species
    def animal_species
        animals.map { |animal| animal.species}.uniq
    end 
#   takes in zoo &(species) --->  .uniq animal species
    def find_by_species(spec)
        animals.select {|animal| animal.species == spec}.uniq
    end 

#   return [] of all animal nicknames in that zoo
#   zoo  --->  names
    def animal_nicknames
        animals.select{ |animal| animal.zoo == self}.map {|animal| animal.nickname}
    end 

#   takes in location, returns [] of zoos w/i that loc
    def self.find_by_location(loc)
        @@all.select{ |zoo| zoo.location == loc}
    end 
end

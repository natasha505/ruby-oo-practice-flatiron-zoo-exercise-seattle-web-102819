require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Test your code here

zoo1 = Zoo.new("Kent", "Natali's Home Zoo")
zoo2 = Zoo.new("Sammamish", "The Warren Zoo")

zoo1.add_animal("Leo", 8, "feline")
zoo1.add_animal("Kai", 10, "feline")
zoo1.add_animal("Felix", 9, "feline")
zoo2.add_animal("Bjorn", 29, "canine")


binding.pry
puts "done"

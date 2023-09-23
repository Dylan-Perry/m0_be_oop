# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name

    def initialize(name)
        @name = name
        @color = "silver"
    end

    def say
        "*~*#{name}*~*"
    end
end

unicorn1 = Unicorn.new("Sparkles")

# Testing Hobbit class variables and methods

# puts unicorn1.name
# puts unicorn1.say

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :is_thirsty

    def initialize(name, pet = "Bat")
        @name = name
        @pet = pet
        @is_thirsty = true
    end

    def drink
        @is_thirsty = false
    end
end

vampire1 = Vampire.new("Dracula", "Ferret")

# Testing Hobbit class variables and methods

# puts vampire1.name
# puts vampire1.pet
# puts vampire1.is_thirsty

# vampire1.drink
# puts vampire1.is_thirsty

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :is_hungry, :times_eaten

    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @times_eaten = 0
    end
    
    def eat
        @times_eaten = @times_eaten.next
        if @times_eaten >= 4
            @is_hungry = false
        end
    end
end

dragon1 = Dragon.new("Smaug", "Dylan", "ruby")

# Testing Hobbit class variables and methods

# puts dragon1.name
# puts dragon1.rider
# puts dragon1.color
# puts dragon1.is_hungry
# puts dragon1.times_eaten

# dragon1.eat
# puts dragon1.is_hungry
# puts dragon1.times_eaten
# dragon1.eat
# puts dragon1.is_hungry
# puts dragon1.times_eaten
# dragon1.eat
# puts dragon1.is_hungry
# puts dragon1.times_eaten
# dragon1.eat
# puts dragon1.times_eaten

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        if name == "Frodo"
            @has_ring = true
        else
            @has_ring = false
        end
    end

    def celebrate_birthday
        @age = @age.next
        if @age >= 33
            @is_adult = true
        end
        if @age >= 101
            @is_old = true
        end
    end

    def celebrate_birthdays(years)
        @age = @age + years
        if @age >= 33
            @is_adult = true
        end
        if @age >= 101
            @is_old = true
        end
    end
end

hobbit1 = Hobbit.new("Brodo", "friendly", 22)

# Testing Hobbit class variables and methods

# puts hobbit1.name
# puts hobbit1.disposition
# puts hobbit1.age
# puts hobbit1.is_adult
# puts hobbit1.is_old
# puts hobbit1.has_ring

# hobbit1.celebrate_birthdays(12)
# puts hobbit1.age
# puts hobbit1.is_adult
# puts hobbit1.is_old

# hobbit1.celebrate_birthdays(67)
# puts hobbit1.age
# puts hobbit1.is_adult
# puts hobbit1.is_old
# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say
    "*~* #{@name} *~*"
  end
end

unicorn1 = Unicorn.new("Isabella")
p unicorn1
puts unicorn1.say


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  def initialize(name, pet)
    @name = name
    @pet = "bat"
    @thirsty = true
    @fed = true
  end

  def change_pet(new_pet)
    @pet = new_pet
  end

  def drink
    if @fed == true
      @thirsty = false
    end
  end
end

vampire1 = Vampire.new("Damon", "toad")
p vampire1
vampire1.change_pet("toad")
p vampire1.drink

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  def initialize (name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @meal = 0
  end

  def eat
    if @meal >= 4
      @is_hungry = false
      @meal += 1
    else
      @meal +=1
    end
  end
end

dragon1 = Dragon.new("Norwegien ridgeback", "Khaleesi", "Green")
p dragon1
# dragon1.eat
# p dragon1
# dragon1.eat
# p dragon1
# dragon1.eat
# p dragon1
# dragon1.eat
# p dragon1
# dragon1.eat
# p dragon1

4.times do dragon1.eat
  end
p dragon1

5.times do dragon1.eat
  end
p dragon1


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  def initialize (name, disposition)
    @name = name.to_s
    @disposition = disposition.to_s
    @age = 0
    @is_adult = false
    @is_old = false
    @has_ring = false
  end

  def celebrate_birthday
    @age += 1
    if @age >= 33 && @age <100
      @is_adult = true
    elsif @age >= 100
      @is_old = true
    end
  end

  def ring_status
    if @name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end
  end
end

hobbit1 = Hobbit.new("Sam", "gentle")
p hobbit1

33.times do hobbit1.celebrate_birthday
  end
p hobbit1

100.times do hobbit1.celebrate_birthday
  end
p hobbit1

p hobbit1.ring_status

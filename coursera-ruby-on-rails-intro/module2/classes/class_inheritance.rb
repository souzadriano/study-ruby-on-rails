class Person
  attr_reader :age
  attr_accessor :name

  def initialize(name, age)
    @name = name
    self.age = age
  end
  def age= (new_age)
    #var = var || something
    @age ||= 5 #default
    @age = new_age unless new_age > 120
  end
end
person = Person.new("Kim", 130)
puts person.age
person.age = 10
puts person.age
person.age = 200
puts person.age

class MathFunctions
  def self.double(var)
      times_called; var * 2;
  end
  class << self
    def times_called
      @@times_called ||= 0; @@times_called += 1
    end
  end
end
def MathFunctions.triple(var)
  times_called; var * 3
end

puts MathFunctions.double 5
puts MathFunctions.triple(3)
puts MathFunctions.times_called

class Dog
    def to_s
      "Dog"
    end
    def bark
      "barks loudly"
    end
end
class SmallDog < Dog
  def bark
    "barks quietly"
  end
end

dog = Dog.new
small_dog = SmallDog.new

puts "#{dog}1 #{dog.bark}"
puts "#{small_dog}2 #{small_dog.bark}"

variavel = 1
puts variavel
variavel2 = "aaaaa"
puts (variavel + variavel2)
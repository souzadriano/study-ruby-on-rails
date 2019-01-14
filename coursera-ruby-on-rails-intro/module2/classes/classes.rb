class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  def get_info
    @additional_info = "Intersting"
    "Name : #{@name}, age: #{@age}"
  end
  def name
    @name
  end
  def name= (new_name)
    @name = new_name
  end
end

person1 =  Person.new("Joe", 14)

p person1.instance_variables

puts person1.get_info

p person1.instance_variables

puts person1.name

person1.name = "Mike"

puts person1.name

class PersonA
  attr_accessor :name, :age
end

persona = PersonA.new
p persona.name
persona.name = "Mike"
persona.age = 15
puts persona.name
puts persona.age
persona.age = "fifteen"
puts persona.age

class PersonB
  attr_reader :age
  attr_accessor :name
  def initialize(name, ageVar)
    @name = name
    self.age = ageVar
    puts age
  end
  def age= (new_age)
    @age = new_age unless new_age > 120
  end
end

personB = PersonB.new("Kim", 13)
puts "My age is #{personB.age}"
personB.age = 130
puts personB.age
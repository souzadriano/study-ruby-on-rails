class Dog
  def bark
    puts "Woof, woof!"
  end
  def greet(greeting)
    puts greeting
  end
end

dog = Dog.new
dog.bark
dog.send("bark")
dog.send(:bark)
method_name = :bark
dog.send method_name

dog.send(:greet, "hello")

props = {name: "John", age: 15}

class Person
  attr_accessor :name, :age

  def to_s
    puts "#{@name}: #{@age}"
  end
end

person = Person.new
props.each { |key, value| person.send("#{key}=", value)}

puts person.to_s
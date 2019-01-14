#Encapsulation

class Car
  def initialize(speed, comfort)
    @rating = speed * comfort
  end

  def rating
    @rating
  end
end

puts Car.new(4, 5).rating

#Specifying access control

class MyAlgorithm
  private
    def test1
      "Private"
    end
  protected
    def test2
      "Protected"
    end
  public
    def public_again
      "Public"
    end
end

class Another
  def test1
    "Private, as declared later on"
  end
  private :test1
end

#private access
class Person
  def initialize(age)
    self.age = age # LEGAL - EXCEPTION
    puts my_age
    # puts self.my_age # ILLEGAL
    # CANNOT USE self or any other receiver
  end

  private
  def my_age
    @age
  end
  def age=(age)
    @age = age
  end
end

Person.new(25) # => 25
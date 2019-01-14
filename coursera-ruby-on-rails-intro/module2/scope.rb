v1 = "outside"

class MyClass
  def my_method
    v1 = "inside"
    p v1
    p local_variables
  end
end

p v1
obj = MyClass.new
obj.my_method

p local_variables
p self

module Test
  PI = 3.14
  class Test2
    def what_is_pi
      puts PI
    end
  end
end
Test::Test2.new.what_is_pi

module MyModule
  MyConstant = 'Outer Constant'
  class MyClass
    puts MyConstant
    MyConstant = 'Inner Constant'
    puts MyConstant
  end
  puts MyConstant
end

class BankAccount
  attr_accessor :id, :amount
  def initialize(id, amount)
    @id = id
    @amount = amount
  end
end

acct1 = BankAccount.new(123, 200)
acct2 = BankAccount.new(321, 100)
acct3 = BankAccount.new(421, -100)

accts = [acct1, acct2, acct3]

total_sum = 0
accts.each do |eachAcct|
  total_sum += eachAcct.amount
end

puts total_sum


arr = [5, 4, 1]
cur_number = 10
arr.each do |cur_number|
  some_var = 10
  print cur_number.to_s + " "
end
puts
puts cur_number

adjustment = 5
arr.each do |cur_number;adjustment|
  adjustment = 10
  print "#{cur_number + adjustment} "
end
puts
puts adjustment
class Mystery
  def method_missing(method, *args)
    puts "Looking for..."
    puts "\"#{method}\" with params (#{args.join(',')}) ?"
    puts "Sorry... He is on vacation..."
    yield "Ended up in method_missing" if block_given?
  end
end

m = Mystery.new
m.solve_mystery("abc", 123123) do |answer|
  puts "And the answer is: #{answer}"
end

#Struct
Customer = Struct.new(:name, :address) do
  def to_s
    "#{name} lives at #{address}"
  end
end
jim = Customer.new("Jim", "-1000 Wall Street")
puts jim

#Open struct
require 'ostruct'

some_obj = OpenStruct.new(name: "Joe", age: 15)
some_obj.sure = "three"
some_obj.really = "yes, it is true"
some_obj.not_only_strings = 10
puts "#{some_obj.name} #{some_obj.age} #{some_obj.really}"
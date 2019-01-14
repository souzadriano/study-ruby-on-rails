puts('test \n \' escape ')

puts("test \n \t test2")

one = 1
two = 2
puts("use the variable #{one} and variable #{two}")

my_name = " test"
puts my_name.lstrip.capitalize

p my_name

my_name.lstrip!

my_name[0] = 'K'

puts my_name

cur_weather = %Q{It's a hot day outside
                 Grab your umbrellas...}

puts cur_weather

cur_weather.lines do |line|
    line.sub! 'hot', 'rainy'
    puts "#{line.strip}"
end

puts "hello".methods.grep /case/
def add(one, two)
    one + two
end

def divide(one, two)
    return "I don't think so" if two == 0
    one / two
end

puts add(2, 2)
puts divide(2, 0)
puts divide(12, 4)

def can_divide_by?(number)
    return false if number.zero?
    true
end
puts can_divide_by? 3
puts can_divide_by? 0

def default_value(value = 5)
    value
end

puts default_value
puts default_value(3)

def max(one_param, *numbers, another)
    numbers.max
end

puts max("something", 5, 4, 5, 6, 10)
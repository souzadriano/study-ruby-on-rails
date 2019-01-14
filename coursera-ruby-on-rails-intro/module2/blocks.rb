1.times { puts "Hello world!"}

2.times do |index|
    puts index if index > 0
end

2.times { |index| puts index if index > 0 }

#Implicity way
def two_times_implicit
    return "No block" unless block_given?
    yield
    yield
end

puts two_times_implicit { puts "Hello" }
puts two_times_implicit

#Explicity way
def two_times_explicit(&i_am_a_block)
    return "No block" if i_am_a_block.nil?
    i_am_a_block.call
    i_am_a_block.call
end

puts two_times_explicit { puts "Hello" }
puts two_times_explicit

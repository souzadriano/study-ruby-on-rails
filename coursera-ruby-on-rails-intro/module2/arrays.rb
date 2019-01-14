het_arr = [1, "two", :three] # heterogeneous types
puts het_arr[1]

arr_words = %w{ what a great day today! }
puts arr_words[-2]
puts "#{arr_words.first} - #{arr_words.last}"
p arr_words[-3, 2]

p arr_words[2..4]

puts arr_words.join(',')

# Tou want a stack (LIFO)? Sure
stack = []
stack << "one"
stack.push("two")
puts stack.pop

# You need a queue (FIFO)? We have those too...
queue = []; queue.push "one"; queue.push "two"
puts queue.shift


a = [5,3,4,2].sort!.reverse!
p a
p a.sample(2)

a[6] = 33
p a

a = [1, 3, 4, 7, 8, 10]
a.each { |num| print num}
puts

new_arr = a.select {|num| num > 4}
p new_arr
new_arr = a.select {|num| num < 10 }
            .reject{ |num| num.even? }
p new_arr

new_arr = a.map {|x| x * 3 }
p new_arr
require_relative 'merge_sort.rb'
require_relative 'bubble_sort.rb'
require_relative 'insertion_sort.rb'

def sort_benchmark(iterations)
  time_begin = Time.now
  iterations.times do
    yield
  end
  time_end = Time.now
  puts "Average time: #{(time_end - time_begin) / iterations} per iteration"
  (time_end - time_begin) / iterations
end

def random_array(size, limit)
  random_array = []
  size.times { random_array << rand(1..limit) }
  random_array
end

sort_benchmark(500) { merge_sort(random_array(100, 3000)) }
sort_benchmark(500) { bubble_sort(random_array(100, 3000)) }
sort_benchmark(500) { insertion_sort(random_array(100, 3000)) }
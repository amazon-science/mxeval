##
# You are an expert Ruby programmer, and here is your task.
# Write a Ruby function to remove all digits from a list of strings.
# irb> remove(["4words", "3letters", "4digits"])
# => ["words", "letters", "digits"]
# irb> remove(["28Jan", "12Jan", "11Jan"])
# => ["Jan", "Jan", "Jan"]
# irb> remove(["wonder1", "wonder2", "wonder3"])
# => ["wonder", "wonder", "wonder"]
def remove(list)
  return list.map { |word| word.gsub(/\d+/, '') }
end

##
# You are an expert Ruby programmer, and here is your task.
# Write a Ruby function to remove even numbers from a given list.
# irb> remove_even([1, 3, 5, 2])
# => [1, 3, 5]
# irb> remove_even([5, 6, 7])
# => [5, 7]
# irb> remove_even([1, 2, 3, 4])
# => [1, 3]
def remove_even(l)
  return l.reject {|x| x % 2 == 0}
end

##
# You are an expert Ruby programmer, and here is your task.
# Write a Ruby function to find the minimum of two numbers.
# irb> minimum(1, 2)
# => 1
# irb> minimum(-5, -4)
# => -5
# irb> minimum(0, 0)
# => 0
def minimum(a, b)
  return a < b ? a : b
end
# Write a method that prints out the numbers 1 to 1000 that are divisible by 3.
def print_numbers_divisible_by_three
  index = 1
  while index <= 1000
    if index % 3 == 0
      puts index
    end
    index += 1
  end
end
# print_numbers_divisible_by_three


# Write a method that accepts an array of strings and prints out every other string.
def print_every_other_item(strings)
  index = 0
  strings.each do |string|
    if index % 2 == 0
      puts string
    end
    index += 1
  end
end
# print_every_other_item(["a", "b", "c", "d", "e"])


# Write a method that accepts an array of numbers and returns the sum.
def compute_sum(numbers)
  sum = 0
  numbers.each do |number|
    sum += number
  end
  return sum
end
# puts compute_sum([2, 4, 5])


# Start with the hash: city_populations = {chi: 2700000}
# Add populations to the city_populations hash for New York City (8.4 million) and San Francisco (800,000).
# The result should be: {chi: 2700000, nyc: 8400000, sf: 800000}
city_populations = {chi: 2700000}
city_populations[:nyc] = 8400000
city_populations[:sf] = 800000
# p city_populations



# Write a method that prints out every number from 1 to 100. 
def one_to_a_hundred
  number = 0
  while number < 100
    number += 1
    puts number
  end
end
# one_to_a_hundred



# Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).
def every_other_number
  number = 0
  while number < 100
    if number % 2 != 0
      puts number
    end
    number += 1
  end
end
# every_other_number


# Write a method that accepts an array of numbers as a parameter, and counts how many 55’s there are in the array.
def number_of_55s(numbers)
  count = 0
  numbers.each do |number|
    if number == 55
      count += 1
    end
  end
  count
end
# p number_of_55s([1, 55, 23, 55, 31, 55, 1001, 55, 2])

# Write a method that accepts an array of strings and returns a new array that has the string "awesomesauce" inserted between every string. 
# For example, if the initial array is ["a", "b", "c", "d", "e"], then the returned array should be ["a", "awesomesauce", "b", "awesomesauce", "c", "awesomesauce", "d", "awesomesauce", "e"].
def awesomesauced(strings)
  awesomesauced_array = []
  index = 0

  while index < strings.length
    awesomesauced_array << strings[index]
    awesomesauced_array << "awesomesauce" unless index == strings.length - 1
    index += 1
  end
  awesomesauced_array
end
# p awesomesauced(["a", "b", "c", "d", "e"])


# Start with the hash: item_amounts = {chair: 5, table: 2}
# Someone just bought two chairs. Change the hash such that the chair amount is 3.
# The final result should be: {chair: 3, table: 2}
item_amounts = {chair: 5, table: 2}
item_amounts[:chair] -= 2
# p item_amounts


# Start with the hash: item_amounts = {chair: 5, table: 2}
# You received 7 desks to sell. Change the hash to include desks.
# The final result should be: {chair: 5, table: 2, desk: 7}
item_amounts = {chair: 5, table: 2}
item_amounts[:desk] = 7
# p item_amounts


# Write a method that accepts a number and returns its factorial.
# For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.
def factorial(num)
  product = 1
  while num > 0
    product *= num
    num -= 1
  end
  product
end
# p factorial(6)

# Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array. 
# For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].
def print_sums(nums1, nums2)
  nums1.each do |num1|
    nums2.each do |num2|
      p num1 + num2
    end
  end
end

# print_sums([1, 5, 10], [100, 500, 1000])

# Write a function that takes in an array of numbers and returns its sum.
def sum(numbers)
  result = 0
  numbers.each do |num|
    result += num
  end
  result
end

# p sum([1, 2, 3])

# Write a function that takes in an array of strings and returns the smallest string.
def smallest_string(strings)
  result = strings[0]
  strings.each do |string|
    if string.length < result.length
      result = string
    end
  end
  result
end

# p smallest_string(["apple", "orange", "grapes"])

# Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.
def reversed_numbers(numbers)
  result = []
  index = numbers.length - 1
  while index >= 0
    result << numbers[index]
    index -= 1
  end
  result
end

# p reversed_numbers([1, 2, 3])

# Write a function that takes in an array of words and returns the number of words that begin with the letter "a".
def a_words(words)
  result = 0
  words.each do |word|
    if word.starts_with?("a")
      result += 1
    end
  end
  result
end

# p a_words(["apple", "orange", "grapes"])

# Write a function that takes in an array of strings and joins them together to make a single string separated by commas.
def join_with_commas(strings)
  result = ""
  strings.each do |string|
    result += "#{string},"
  end
  result
end

p join_with_commas(["apple", "orange", "grapes"])

# Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).
def product(numbers)
  result = 1
  numbers.each do |number|
    result *= number
  end
  result
end

# p product([1, 2, 3, 4])

# Write a function that takes in an array of numbers and returns the two smallest numbers.
def two_smallest_numbers(numbers)
  smallest_index = 0
  smallest = numbers[smallest_index]
  index = 0
  while index < numbers.length
    if numbers[index] < smallest
      smallest = numbers[index]
      smallest_index = index
    end
    index += 1
  end
  second_smallest = numbers[smallest_index - 1]
  index = 0
  while index < numbers.length
    if numbers[index] < second_smallest && index != smallest_index
      second_smallest = numbers[index]
    end
    index += 1
  end
  [smallest, second_smallest]
end

# p two_smallest_numbers([1, 10, 9, 3, 23, 12])

# Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.
def zero_count(numbers)
  result = 0
  numbers.each do |number|
    if number == 0
      result += 1
    end
  end
  result
end

# p zero_count([9, 32, 0, 2, 0, 12, 5, 2, 0, 1])

# Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.
def is_all_big(numbers)
  result = true
  numbers.each do |number|
    if number <= 10
      result = false
    end
  end
  result
end

# p is_all_big([11, 23, 32])

# Write a function that takes in an array of words and returns the number of times the letter "a" appeared in total.
def a_count(words)
  result = 0
  words.each do |word|
    word.each_char do |letter|
      if letter == "a"
        result += 1
      end
    end
  end
  result
end

p a_count(["apple", "orange", "grapes"])
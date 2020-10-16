#Including NumberDeleting class
require_relative "NumberDeleting.rb"

#Creating new object
numbers = Functions.new

#Generating array
array = Array.new(10) { rand(1...1000) }

#Searching for maximum and minimum values
max1 = numbers.Maximum(array)
min1 = numbers.Minimum(array)
puts(max1)
puts(min1)

#Deleting minimum and maximum values
array = numbers.Deleting(array, max1, min1)
puts("-----------------------")

#Writing all left numbers from an array
for i in 0..7 do
    puts(array[i])
end
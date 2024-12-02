# frozen_string_literal: true

file = File.read("input.txt")

arr1 = []
arr2 = []
file.split("\n").each do |line|
  values = line.split
  arr1 << values[0].to_i
  arr2 << values[1].to_i
end

arr1 = arr1.sort
arr2 = arr2.sort
total = 0

arr1.each_with_index do |val, i|
  distance = (val - arr2[i]).abs
  total += distance
end

puts total

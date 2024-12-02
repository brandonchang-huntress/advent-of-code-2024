# frozen_string_literal: true
file = if ENV["TEST"]
         "input_test.txt"
       else
         "input.txt"
       end


safe_count = 0

File.readlines(file).each do |line|
  values = line.split.map(&:to_i)

  values = values.reverse if values[0] > values[1]

  safe = true
  values.each_cons(2) do |v2|
    difference = v2[1] - v2[0]

    if difference > 3 || difference < 1
      safe = false
      break
    end
  end

  safe_count += 1 if safe
end

puts safe_count

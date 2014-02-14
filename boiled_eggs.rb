require 'pry'

def cooking_time(eggs)
  number_of_batches = eggs.to_f/8
  if number_of_batches == 0
    return 0
  elsif number_of_batches.to_s.include?(".")
    split_batches = number_of_batches.to_s.split(".")
    if split_batches[1].to_i > 0
      number_of_batches = split_batches[0].to_i + 1
      time_to_cook = number_of_batches * 5
    else
      time_to_cook = number_of_batches.to_i * 5
    end
  else
    time_to_cook = number_of_batches.to_i * 5
  end
end

puts cooking_time(8)
def cooking_time(eggs)
  time_to_cook = eggs.to_f/8
  if time_to_cook >= 0
    time_to_cook = time_to_cook.ceil * 5
  else
    time_to_cook = 0
  end
end
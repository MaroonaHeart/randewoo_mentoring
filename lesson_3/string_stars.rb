# Write a function that takes a list of strings an prints them, one per line, in a rectangular frame. 
# For example the list ["Hello", "World", "in", "a", "frame"] gets printed as:
# *********
# * Hello *
# * World *
# * in    *
# * a     *
# * frame *
# *********

def string_stars(arr)
  puts '*********'
  i = 0 

  while i < arr.size
    puts "* #{arr[i]} *"
    i += 1
  end

  puts '*********'
end

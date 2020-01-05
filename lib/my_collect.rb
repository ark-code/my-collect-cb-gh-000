def my_collect(array)
  counter = 0
  coll = []
  while counter <  array.size 
    coll << yield(array[counter]).split(' ')[0]
  end
  coll
end
  

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  arr = []
  names.each { |name| arr << badge_maker(name) }
  arr
end

def assign_rooms(names)
  arr = []
  amt = names.size
  room = 1
  while room <= amt
    arr << "Hello, #{names[room - 1]}! You'll be assigned to room #{room}!"
    room += 1
  end
  arr
end

def printer(names)
  names.each { |name| 
    puts batch_badge_creator(names)[names.index(name)]
    puts assign_rooms(names)[names.index(name)]
  }
end
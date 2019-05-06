def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  arr = []
  names.each {|e| arr << badge_maker(e)}
  arr
end

def assign_rooms(names)
  msg = []
  room = 1
  while room <= names.size
    msg << "Hello, #{names[room - 1]}! You'll be assigned to room #{room}!"
    room += 1
  end
  msg
end

def printer(a)
  count = 0
  while count < a.size
    puts batch_badge_creator(a[count])
    puts assign_rooms(a[count])
    count += 1
  end
end
def ask_pyramid
  puts "Bienvenue dans ma super pyramide, combien d'étages veux-tu ? (nb impair)"
  print "> "
  floor_number = gets.chomp.to_i
  return floor_number
end

def half_pyramid(floor_number)
  i = 1
  puts "Voici ta pyramide :"
  floor_number.times do
    puts " " * (floor_number - 1) + "#" * (i)
    i += 1
    floor_number -= 1
  end
end

def full_pyramid(floor_number)
  i = 1
  height = floor_number - 1
  puts "Voici ta pyramide :"
  floor_number.times do
    puts " " * (height) + "#" * (i)
    i += 2
    height -= 1
  end
end

def wtf_pyramid(floor_number)
  full_pyramid(floor_number)
  i = 1
  height = floor_number - 2

  floor_number.times do
    puts " " * (i) + "#" * (height)
    i += 1
    height -= 1
  end
end



def perform
  floor_number = ask_pyramid
  wtf_pyramid(floor_number)
end

perform

def dice_rolling
  dice_numbers = [1, 2, 3, 4, 5, 6]
  dice_roll = dice_numbers.sample
  puts "Vous avez fait #{dice_roll}"
  return dice_roll
end

def roll_action(dice_roll)
  if dice_roll >= 5
    puts "Vous montez d'une marche !"
    return 1
  elsif dice_roll == 1
    puts "Vous descendez d'une marche !"
    return -1
  else
    puts "Il ne se passe rien"
    return 0
  end
end

def step_position(step)
  position = 0
  while position != 10
    position = position + step
    puts position
    step = roll_action(dice_roll)
  end
  puts "Félicitations, tu es sur la marche 10"
end

def perform
  dice_roll = dice_rolling
  step = roll_action(dice_roll)
  step_position(step)
end

perform

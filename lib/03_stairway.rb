def dice_rolling
  dice_numbers = [1, 2, 3, 4, 5, 6]
  dice_roll = dice_numbers.sample
  puts "Vous avez fait #{dice_roll}"
  return dice_roll
end

def roll_action(dice_roll)
  step = 0
  if dice_roll >= 5
    puts "Vous montez d'une marche !"
    step += 1
    return step
  elsif dice_roll == 1
    puts "Vous descendez d'une marche !"
    step -= 1
    return step
  else
    puts "Il ne se passe rien"
    step = 0
    return step
  end
end

def step_position(step)
  i = 0
  n = 0
  position = i + step
  while position == 10
    n += 1
    puts position + step
    roll_action(dice_roll)
    puts "Coup numéro #{n}"
  end
  puts "Félicitations, tu es sur la marche 10"
  puts "Cela t'a pris #{n} coups"
end

def perform
  dice_roll = dice_rolling
  step = roll_action(dice_roll)
  step_position(step)
end

perform

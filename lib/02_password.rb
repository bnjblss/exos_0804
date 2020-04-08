def sign_up
  puts "Hello, définis un mot de passe ici :"
  print "> "
  user_pw = gets.chomp.to_s
  puts "Ok, c'est noté !"
  return user_pw
end

def login(user_pw)
  puts "Quel est ton mot de passe ?"
  print "> "
  pw_check = gets.chomp.to_s

  if pw_check == user_pw
    puts "C'est validé !"
    welcome_screen
  else
    puts "C'est pas bon ! Reessaye"
    login(user_pw)
  end
end

def welcome_screen
  puts "Bienvenue dans ton espace secret !"
  puts "Tu vas maintenant avoir accès au numéro de Donald Trump pour pouvoir l'insulter"
end

def perform
  user_pw = sign_up
  login(user_pw)
end

perform

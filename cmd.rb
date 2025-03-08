require './index'
def programme_end
  loop do
    puts "Entrez un mot ou une phrase (Tapez -1 pour quitter): "
  str=gets
  mot_utilisateur=str.chomp
    if mot_utilisateur == "-1"
      puts "Fin du programme"
      break
    else
      is_isogram?(mot_utilisateur)
    end
  end
end

programme_end



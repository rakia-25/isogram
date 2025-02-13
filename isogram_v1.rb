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
def is_isogram?(mot)
  mots=mot.gsub(/[-_\s]/,'') #supprime les caracteres "_ - et espace"
  hash={} 
  lettres=mots.downcase.chars #convertir le mot entré par l'utilisateur en caractéres distincts
  lettres.each do |l| #boucle sur chaque lettre
    hash[l]=lettres.count(l) #cree un hash avec comme clé chaque lettre du mot et la valeur correspond au nombre de lettre qui apparait dans le mot
  end
  hash_sort=hash.sort_by {|_key, value| -value}.to_h #trie le hash par ordre decroissant en fonction de value

  hash_sort.each_value do |value| #boucle sur les differentes valeur du hash
      if value>1  #si value est superieur a 1,donc il y'a une lettre qui se rpete plusieurs fois
        puts false #false ce mot n'est pas un isogram
        puts
        break
      elsif value==1
        puts true #ce mot est un isogram
        break
      end
    end
end
programme_end



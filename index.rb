
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
        return false #false ce mot n'est pas un isogram
        break
      elsif value==1
        return true #ce mot est un isogram
        break
      end
    end
end



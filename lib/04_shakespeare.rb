file = File.open("shakespeare_corpus.txt", "rb")
contents = file.read;
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def shakespeare_counter(word, dictionnary)
    pairs = {} #hash vide => c'est l'output
    word = word.downcase #en minuscule pour garantir occurence
    dictionnary.each do |included|
      frequence = word.scan(/#{included}/).length # cherche le nombre de similitudes entre mot du dico et mot donné
      if frequence > 0 # si trouve, c'est ajouté au hash
        pairs[included] = frequence
      end
    end
    return pairs
  end

puts shakespeare_counter(file, dictionary)
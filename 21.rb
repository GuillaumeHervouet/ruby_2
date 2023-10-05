def ramener
    require_relative "./00_journalists.rb"
    liste = journ
    return liste

end 

nomjo = ramener
total_word =nomjo.size
puts "il y'a #{total_word} mots dans cet array pour les journalistes"

handles_with_5_chars = nomjo.select { |handle| handle.size - 1 == 5 }
puts "Il y a #{handles_with_5_chars.count} handles contenant exactement 5 caractères (sans le @)."


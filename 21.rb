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

shortest_handle = nomjo.min_by { |handle| handle.size }

puts "Le handle le plus court est : #{shortest_handle}"

sorted_handles = nomjo.sort

puts "Handles triés par ordre alphabétique :"
puts sorted_handles


sorted_by_size = nomjo.sort_by { |handle| handle.size }

puts "Handles triés par taille :"
puts sorted_by_size

position = nomjo.index("@epenser")

position
puts "La position de @epenser dans le tableau est : #{position + 1}"

# Initialiser 
repartition = Hash.new(0)

# Parcourir 
nomjo.each do |handle|
  taille = handle.size
  repartition[taille] += 1
end

# Afficher 
repartition.sort.each do |taille, count|
  puts "Nombre de handles de taille #{taille}: #{count}"
end
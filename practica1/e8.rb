=begin
Modificá la función anterior para que sólo considere como aparición del segundo String
cuando se trate de palabras completas. Por ejemplo:
contar_palabras("La casa de la esquina tiene la puerta roja y la
ventana blanca.", "la")
# => 4
=end

def contar_palabras(str_1, str_2)
  array = str_1.downcase.split
  array.map {|palabra| palabra == str_2.downcase}.count(true)

end


puts contar_palabras("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")


=begin
me la complique armando un array de true o false y buscando los true


def count_word_occurrences(text, word)
  # Create a regular expression to match the whole word, case-insensitively.
  # \b ensures whole word matching (word boundaries).
  # Regexp.escape handles special characters in the word.
  regex = /\b#{Regexp.escape(word)}\b/i 
  
  # Use scan to find all occurrences and then count them.
  text.scan(regex).count
end

puts count_word_occurrences("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")

Solucion iA, no entiendo regex = /\b#{Regexp.escape(word)}\b/i

=end
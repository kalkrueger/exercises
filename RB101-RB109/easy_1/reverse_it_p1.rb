def reverse_sentence(sen)
  new_sen = ""
  reversed = sen.split.reverse
  reversed.each { |w| new_sen << w + ' '}
  print new_sen
end

reverse_sentence("Reverse these words")

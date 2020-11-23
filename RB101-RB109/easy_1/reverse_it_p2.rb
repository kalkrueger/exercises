def reverse_words(sen)
  arr = sen.split.map do |w|
    if w.length >= 5
      w.reverse
    else
      w
    end
  end
    puts arr.join(' ')
end

reverse_words('Professional')

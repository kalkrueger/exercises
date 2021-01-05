def swapcase(str)
  swapped = str.chars.map do |char|
      if char.count("A-Z") > 0
        char.downcase
      elsif char.count("a-z") > 0
        char.upcase
      else
        char
      end
    end
    p swapped
    swapped.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

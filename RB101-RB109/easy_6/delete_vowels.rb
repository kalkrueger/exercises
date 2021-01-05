def remove_vowels(arr)
  arr.map do |str|
    str.delete("aeiouAEIOU")
  end
end

p remove_vowels(%w(ABC AEIOU XYZ))

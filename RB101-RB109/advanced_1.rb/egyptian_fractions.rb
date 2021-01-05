
def egyptian(number)
  arr = []
  start = 1
  while number > 0
    numer = number.numerator
    den = number.denominator
    mult_num = 2

    until den >= start && den % start == 0
      p numer *= start
      p den *= start
    end

    until den % start == 0
      start += 1
    end

    p number = (Rational(numer, den) - Rational(1, start))
    arr << start
    start += 1


  end
  arr
end

p egyptian(Rational(2, 1))

class Person

  def initialize(fn, ln)
    self.first_name=(fn)
    self.last_name=(ln)
  end

  def first_name=(fn)
    @first_name = fn.capitalize
  end

  def last_name=(ln)
    @last_name = ln.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person

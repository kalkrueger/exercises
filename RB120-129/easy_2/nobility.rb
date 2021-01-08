module Moving
  def walk
    puts "#{name} #{gait} forward"
  end
end

class Person
  attr_reader :name
  include Moving

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Noble < Person
  attr_reader :name, :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def walk
    puts "#{title} #{name} #{gait} forward"
  end

  private

  def gait
    "struts"
  end
end


class Cat
  attr_reader :name
  include Moving

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name
  include Moving

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end


mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
byron.walk

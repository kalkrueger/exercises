#pets must store pet type and pet name
#owner must store owner name, number of pets, and pet_id
#shelter must initiate an adoption and be able to print

class Pet
  attr_reader :type, :name

  def initialize (type, name)
    @type = type
    @name = name
    Shelter.add_pet(self)
  end
end

class Owner
  attr_reader :name, :number_of_pets, :pets

  def initialize (name)
    @name = name
    @number_of_pets = 0
    @pets =[]
  end

  def adopt(pet)
    @number_of_pets += 1
    @pets << pet
  end

  def print_pets
    @pets.each do |pet|
      puts "a #{pet.type} named #{pet.name}"
    end
  end
end

class Shelter
  @@adopters = []
  @@pets = []

  def adopt(owner, pet)
    owner.adopt(pet)
    if !@@adopters.include?(owner)
          @@adopters << owner
    end
    @@pets.delete(pet)
  end

  def self.add_pet(pet)
    @@pets << pet
  end

  def self.num_of_pets
    @@pets.size
  end

  def print_adoptions
    @@adopters.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.print_pets
    end
    if self.class.num_of_pets > 0
      puts "The Animal Shelter has the following pet(s):"
      @@pets.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
    end
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
willow       = Pet.new('dog', 'Willow')
cricket      = Pet.new('cat', 'Cricket')
doggo        = Pet.new('dog', 'Doggo')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
kal     = Owner.new('Kal')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(kal, willow)
shelter.adopt(kal, cricket)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{kal.name} has #{kal.number_of_pets} adopted pets."
puts "The Animal shelter has #{Shelter.num_of_pets} unadopted pet(s)."

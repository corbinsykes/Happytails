class Animal
attr_accessor :name, :breed, :age, :gender, :fav_toys
  def initialize(name, breed, age, gender, fav_toys)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @fav_toys = fav_toys
  end

  def to_s
    return "This is #{:name}, a #{:age}-year-old #{:gender} #{:breed}."
  end
end

class Client
  attr_accessor :name, :age, :gender, :kids, :pets
  def initialize(name, age, gender, kids)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets = []
  end

  def to_s
    return "This is #{:name}, a #{:age}-year-old #{:gender} with #{:kids} children and #{:pets} pets."
  end
end

class Shelter
  attr_accessor :name, :clients, :animals
    def initialize
      @name = name
      @clients = []
      @animals = []
    end
end

happi_tails = Shelter.new

client_1 = Client.new("Mike Lemon", "37", "Male", "4")
happi_tails.clients[:client_1] = client_1
happi_tails.clients[:client_1].pets.animals << Animal.new("Snoopy", "beagle", "63", "male", "fighter plane")

client_2 = Client.new("Sally Fields", "20", "female", "0")
happi_tails.clients[:client_2] = client_2
happi_tails.clients[:client_2].pets.animals << Animal.new("Pebbles", "beagle", "12", "female", "pillow")

client_3 = Client.new("Tom Tom", "78", "Male", "2")
happi_tails.clients[:client_3] = client_3
happi_tails.clients[:client_3].pets.animals << Animal.new("Ace", "sheltie", "5", "chew toy")

client_4 = Client.new("George Micheal Bluth", "19", "Male", "0")
happi_tails.clients[:client_4] = client_4
happi_tails.clients[:client_4].pets.animals << Animal.new("Bob", "turtle", "105", "rock")
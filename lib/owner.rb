class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []

  def initialize name
    @name = name
    @species = "human"

    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count 
    all.count
  end

  def self.reset_all 
    @@all = []
  end

  def self.all 
    @@all 
  end


  def buy_cat name 
    Cat.new "name", self
  end

  def buy_dog name 
    Dog.new "name", self
  end

  # def walk_dogs
  # end

  # def walk_cats
  # end

end
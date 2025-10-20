require 'pry'

class User
  attr_accessor :email, :age

  @@user_all = []
  def initialize(email, age)
    @email = email
    @age = age
  end

  def afficher
    puts "Bonjour le monde! Je suis #{email} et j'ai #{age} ans."
  end
end

m = User.new('julie@email.com', 32)

m.afficher

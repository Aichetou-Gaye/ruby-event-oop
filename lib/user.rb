require 'pry'

class User
  # Définition des attributs
  attr_accessor :email
  attr_accessor :age

  # Initialisation (méthode initialize)
  def initialize(email, age)
    @email = email
    @age = age
  end

  # Méthode d'affichage
  def afficher
    # Utilisation des méthodes d'accès (email, age) ou des variables d'instance (@email, @age)
    puts "Bonjour le monde! Je suis #{self.email} et j'ai #{self.age} ans."
  end
end

# Création de l'instance
# La syntaxe est Classe.new(arguments)
m = User.new("julie@email.com", 32)

# Appel de la méthode
m.afficher

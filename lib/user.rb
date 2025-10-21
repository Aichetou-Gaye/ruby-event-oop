require 'pry'

class User
  # 1. Variable de classe pour stocker TOUTES les instances
  # Elle doit être initialisée avant toute instance.
  @@all_users = [] 
  
  # 2. Variables d'instance lisibles et modifiables (email et age)
  attr_accessor :email
  attr_accessor :age

  # 3. Initialisation et stockage
  def initialize(email, age)
    @email = email
    @age = age
    
    # Stocker l'instance actuelle (self) dans la variable de classe
    @@all_users << self
    
    puts "Nouvel utilisateur créé : #{email}."
  end

  # Méthode d'affichage (méthode d'instance)
  def afficher
    puts "Bonjour le monde! Je suis #{self.email} et j'ai #{self.age} ans."
  end
  
  # 4. Méthode de CLASSE pour récupérer tous les utilisateurs
  # Elle est définie avec le mot-clé self.
  def self.all
    return @@all_users
  end
end


# Création des instances (déclenche initialize et ajoute à @@all_users)
m1 = User.new("julie@email.com", 32)
m2 = User.new("jean@mail.fr", 45)
m3 = User.new("alice@yahoo.com", 22)

# Appel d'une méthode d'instance
m1.afficher 

puts "---"

# Appel de la méthode de CLASSE pour obtenir la liste (spécification 4)
puts "Liste des emails des utilisateurs créés (User.all) :"
User.all.each do |user|
  puts "- #{user.email}"
end

binding.pry

# require 'pry'
class User
  attr_accessor :email, :age

  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    
  end  

end

# binding.pry
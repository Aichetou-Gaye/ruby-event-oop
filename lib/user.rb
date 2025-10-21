# frozen_string_literal: true

class User # rubocop:disable Style/Documentation
  attr_accessor :age, :email

  @@all_users = [] # rubocop:disable Style/ClassVars

  def initialize(email, age)
    @email = email

    @age = age

    @@all_users << self
  end

  def self.all
    @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each do |user|
      return user if user.email == email
    end
    puts "aucun utilisateur n'a cet email"
    false
  end
end

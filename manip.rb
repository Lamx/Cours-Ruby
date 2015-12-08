class Utilisateur

  attr_accessor :prenom, :amis
  
  def initialize(prenom)
      @prenom = prenom
  end
  
  def est_ami_avec?(prenom)
      amis.each do |ami|
          return true if ami.prenom == prenom
      end
      return false
  end
    
end


alice = Utilisateur.new("Alice")

bob = Utilisateur.new
bob.prenom = "Bob"

jane = Utilisateur.new
jane.prenom = "Jane"

alice.amis = [bob, jane]

puts alice.amis.size

puts alice.est_ami_avec?("Bob")
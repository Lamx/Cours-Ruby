class Utilisateur
    attr_accessor :prenom, :nom, :amis
    
    def nom_complet
        prenom + " " + nom
    end
    
    def est_ami_avec(valeur)
        
        amis.each do |ami|
        ami = "#{ami}"
        
        if valeur == ami
            "Oui :)"
            
        else
            "Non :("
                
        end
        
        end
        
    end
    
end

alice = Utilisateur.new
alice.prenom = "Alice"
alice.nom = "Fillot"

bob = Utilisateur.new
bob.prenom = "Bob"
bob.nom = "Lennon"

ted = Utilisateur.new
ted.prenom = "Ted"
ted.nom = "Mosby"

alice.amis = ["Léo", "Manon", "Roxanne"]
bob.amis = ["John", "Paul", "George", "Ringo"]
ted.amis = ["Marshall", "Barney"]
puts alice.amis.length

puts "Est-ce que " + alice.nom_complet + " est amie avec Léo ?\n" + alice.est_ami_avec("Manon")




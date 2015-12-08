class Utilisateur
    attr_accessor :prenom
end

mon_utilisateur = Utilisateur.new
mon_utilisateur.prenom = "Bob"
puts mon_utilisateur.prenom

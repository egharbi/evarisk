class Composante < ActiveRecord::Base
  attr_accessible :code, :id, :libelle
  has_many:unites

end



def libelle_complet
  code +" "+libelle
end


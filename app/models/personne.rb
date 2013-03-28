class Personne < ActiveRecord::Base
  attr_accessible :charge_evac, :email, :f_extinc, :id, :nom, :nouveau, :prenom, :sst, :statut, :suivi_med_cons, :tel, :unite_id
  belongs_to :unite, :foreign_key => :unite_id

   validates :unite,    :existence => true

end


class Unite < ActiveRecord::Base
  attr_accessible :activite, :code, :id, :nom, :compo_id, :full
  belongs_to :composante, :foreign_key => :compo_id
end


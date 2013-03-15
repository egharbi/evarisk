class AddStatutIdToPersonnes < ActiveRecord::Migration
  def change
    add_column:personnes, :statut_id, :integer
    add_index :personnes, :statut_id
  end
end


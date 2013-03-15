class AddUniteIdToPersonnes < ActiveRecord::Migration
  def change
    add_column:personnes, :unite_id, :integer
    add_index :personnes, :unite_id
  end
end


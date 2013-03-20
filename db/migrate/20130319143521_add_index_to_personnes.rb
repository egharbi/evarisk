class AddIndexToPersonnes < ActiveRecord::Migration
  def change
    add_index :personnes,  :unite_id
  end
end


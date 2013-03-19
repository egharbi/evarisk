class AddIndexToUnite < ActiveRecord::Migration
  def change
      add_index :unites,  :compo_id
  end
end


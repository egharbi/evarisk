class AddCompoIdToUnites < ActiveRecord::Migration
  def change
    add_column:unites, :compo_id, :integer
    add_index :unites, :compo_id
  end
end


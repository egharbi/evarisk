class CreateUnites < ActiveRecord::Migration
  def change
    create_table :unites do |t|
      t.integer :id
      t.string :nom
      t.string :code
      t.string :activite
      t.integer :compo_id

      t.timestamps
    end
  end
end


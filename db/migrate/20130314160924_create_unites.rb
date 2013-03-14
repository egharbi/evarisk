class CreateUnites < ActiveRecord::Migration
  def change
    create_table :unites do |t|
      t.integer :id
      t.integer :id_etab
      t.integer :id_compo
      t.string :nom
      t.string :code
      t.string :activite
      t.string :id_directeur

      t.timestamps
    end
  end
end

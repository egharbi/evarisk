class CreatePersonnes < ActiveRecord::Migration
  def change
    create_table :personnes do |t|
      t.integer :id
      t.string :nom
      t.string :prenom
      t.string :statut
      t.string :tel
      t.string :email
      t.boolean :nouveau
      t.boolean :sst
      t.boolean :charge_evac
      t.boolean :f_extinc
      t.integer :suivi_med_cons

      t.timestamps
    end
  end
end

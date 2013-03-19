class CreateComposantes < ActiveRecord::Migration
  def change
    create_table :composantes do |t|
      t.integer :id
      t.string :code
      t.string :libelle

      t.timestamps
    end
  end
end

class CreateMoradors < ActiveRecord::Migration[6.0]
  def change
    create_table :moradors do |t|
      t.string :nome
      t.string :num_apto
      t.string :cpf

      t.timestamps
    end
  end
end

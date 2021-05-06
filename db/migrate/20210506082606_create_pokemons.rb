class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :pokemon_number, null: false
      t.string :name,            null: false
      t.integer :type1_id,       null: false
      t.integer :type2_id
      t.timestamps
    end
  end
end

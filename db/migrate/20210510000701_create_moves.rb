class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :move_name, null: false 
      t.integer :type_id,  null: false
      t.integer :pp,       null: false
      t.integer :power,    null: false
      t.integer :accuracy, null: false
      t.timestamps
    end
  end
end

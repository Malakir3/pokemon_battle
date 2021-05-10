class Move < ApplicationRecord
  has_many :pokemon_moves
  has_many :pokemons, through: :pokemon_moves
  has_many :type

  with_options presence: true do
    validates :move_name
    validates :type_id
    validates :pp
    validates :power
    validates :accuracy
  end
end
